package kf.plt.admin.auth.datacontrol.interceptor;


import com.github.pagehelper.autoconfigure.PageHelperAutoConfiguration;
import kf.plt.admin.auth.datacontrol.config.DataControlConfig;
import kf.plt.admin.auth.datacontrol.entity.DataResource;
import kf.plt.admin.auth.datacontrol.filter.SqlFilter;
import kf.plt.admin.auth.datacontrol.service.AuthDataService;
import kf.plt.admin.auth.datacontrol.util.DataPermissionUtils;
import kf.plt.admin.auth.datacontrol.util.ReflectUtil;
import kf.plt.admin.common.msg.ListResultResponse;
import kf.plt.admin.jwt.core.context.BaseContextHandler;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.cache.CacheKey;
import org.apache.ibatis.executor.Executor;
import org.apache.ibatis.executor.statement.RoutingStatementHandler;
import org.apache.ibatis.executor.statement.StatementHandler;
import org.apache.ibatis.mapping.BoundSql;
import org.apache.ibatis.mapping.MappedStatement;
import org.apache.ibatis.plugin.*;
import org.apache.ibatis.session.ResultHandler;
import org.apache.ibatis.session.RowBounds;
import org.springframework.boot.autoconfigure.AutoConfigureAfter;
import org.springframework.boot.autoconfigure.AutoConfigureBefore;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

/**
 * 数据权限 Mybatis 拦截器 只对查询有效
 * @author maijinchao
 * @Ccreate 2018-12-07-9:26 AM
 */
@Slf4j
@Intercepts(
        {
                @Signature(type = Executor.class, method = "query", args = {MappedStatement.class, Object.class, RowBounds.class, ResultHandler.class}),
                @Signature(type = Executor.class, method = "query", args = {MappedStatement.class, Object.class, RowBounds.class, ResultHandler.class, CacheKey.class, BoundSql.class}),
        }
)
public class DataControlInterceptor implements Interceptor {


    private DataControlConfig dataControlConfig;

    private AuthDataService authDataService;


    public DataControlInterceptor(DataControlConfig config,AuthDataService service){
        this.dataControlConfig = config;
        this.authDataService = service;
    }

    @Override
    public Object intercept(Invocation invocation) throws Throwable {
        Object[] args = invocation.getArgs();
        MappedStatement ms = (MappedStatement) args[0];
        Object parameter = args[1];
        RowBounds rowBounds = (RowBounds) args[2];
        ResultHandler resultHandler = (ResultHandler) args[3];
        Executor executor = (Executor) invocation.getTarget();
        CacheKey cacheKey;
        BoundSql boundSql;
        // 根据不同拦截进行判断,参数长度为4时候,因为逻辑关系,只会进入一次
        if (args.length == 4) {
            //4 个参数时
            boundSql = ms.getBoundSql(parameter);
            cacheKey = executor.createCacheKey(ms, parameter, rowBounds, boundSql);
        } else {
            //6 个参数时
            cacheKey = (CacheKey) args[4];
            boundSql = (BoundSql) args[5];
        }

        //TODO 对sql进行逻辑处理

        // 检查白名单,是白名单数据直接放行
        if(isStartWith(BaseContextHandler.getRequestUri())) {
            return executor.query(ms, parameter, rowBounds, resultHandler, cacheKey, boundSql);
        }

//            RoutingStatementHandler handler = (RoutingStatementHandler) invocation.getTarget();
//            StatementHandler delegate = (StatementHandler) ReflectUtil.getFieldValue(handler, "delegate");
//            //通过反射获取delegate父类BaseStatementHandler的mappedStatement属性
//            MappedStatement mappedStatement = (MappedStatement) ReflectUtil.getFieldValue(delegate, "mappedStatement");
        String sourSql = boundSql.getSql();
        log.info("打印原sql" + sourSql);
        // 无设置忽略数据权限,mapper 默认都需要做数据权限的校验
        if (!DataPermissionUtils.getMapperPermissionByDelegate(ms) && !DataPermissionUtils.getMethodPermissionByDelegate(ms)) {
            // 获取 mapper 的类名与函数名
            String id = ms.getId();
            String className = id.substring(0, id.lastIndexOf("."));
            String methodName = id.substring(id.lastIndexOf(".") + 1, id.length());

            // 对特殊查询数据函数进行原 sql 改做 where 1=1
            if (isSpecialSelectMethod(methodName)) {
                sourSql += " WHERE 1=1 ";
            }
            // 根据权限获取数据资源列表
            ListResultResponse<DataResource> dataResoureList = authDataService.getDataResoureById(BaseContextHandler.getUserID(), className, methodName);
            // 无设置数据权限,就拥有所有的数据权限
            if (dataResoureList.getData() == null || dataResoureList.getData().size() == 0) {
                return executor.query(ms, parameter, rowBounds, resultHandler, cacheKey, boundSql);
            }

            // 对数据资源以及原查询 sql 进行修改
            List<String> rowArray = rowSqlArray(dataResoureList);
            List<String> columnArray = columnSqlArray(dataResoureList);
            if (rowArray != null && rowArray.size() != 0) {
                sourSql = SqlFilter.RowDataSplitFilter(sourSql, rowArray);
            }
            if (columnArray != null && columnArray.size() != 0) {
                sourSql = SqlFilter.CloumnDataSplitFilter(sourSql, columnArray);
            }
            log.info(sourSql);
            // 把修改好 sql 放回原来的地方
            ReflectUtil.setFieldValue(boundSql, "sql", sourSql);
        }


        return executor.query(ms, parameter, rowBounds, resultHandler, cacheKey, boundSql);
    }

    @Override
    public Object plugin(Object target) {
        return Plugin.wrap(target, this);
    }

    @Override
    public void setProperties(Properties properties) {

    }

    /**
     * 查找 URI 是否在白名单
     * @param requestUri
     * @return 是白名单返回true,不在就返回false
     */
    private boolean isStartWith(String requestUri) {
        boolean flag = false;
        for (String s : dataControlConfig.getIgnoreUri().split(",")) {
            if (requestUri.startsWith(s)) {
                return true;
            }
        }
        return flag;
    }

    /**
     *  是否特殊处理的查询函数
     * @param method 函数名
     * @return
     */
    private boolean isSpecialSelectMethod(String method) {
        boolean flag = false;
        for (String s : dataControlConfig.getSelectMethod().split(",")) {
            if (method.equals(s)) {
                return true;
            }
        }
        return flag;
    }

    /**
     * 获取行 sql 数组
     * @param dataResoureList 数据权限数据
     * @return 返回行sql数组
     */
    private List<String> rowSqlArray(ListResultResponse<DataResource> dataResoureList) {
        List<String> sqlArray = new ArrayList<String>();
        for (DataResource item:dataResoureList.getData()) {
            if(item.getRowSql() != "" && item.getRowSql() != null){
                sqlArray.add(item.getRowSql());
            }
        }
        return sqlArray;
    }


    /**
     * 获取列 sql 数据
     * @param dataResoureList 数据权限数据
     * @return 返回列数据
     */
    private List<String> columnSqlArray(ListResultResponse<DataResource> dataResoureList) {
        List<String> sqlArray = new ArrayList<String>();
        for (DataResource item:dataResoureList.getData()) {
            if(item.getColumnSql() != "" && item.getColumnSql() != null){
                sqlArray.add(item.getColumnSql());
            }
        }
        return sqlArray;
    }
}
