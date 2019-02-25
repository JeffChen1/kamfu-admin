package kf.plt.admin.auth.datacontrol.filter;

import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/**
 * SQL 过滤器
 * @author 麦锦超
 * @Ccreate 2018-12-13-10:07 AM
 */
public class SqlFilter {

    /**
     * 需要替换 sql 的标志
     */
    private  final  String  sqlSign = "#(rowsql)";


    /**
     * 行 sql 拼接过滤器
     * @param sourceSql 原 sql 语句
     * @param sqlPartArray sql 片段数组
     * @return 返回拼接好的 sql
     */
    public static String RowDataSplitFilter(String sourceSql,List<String> sqlPartArray){
        if(sqlPartArray == null || sqlPartArray.toArray().length == 0) {
            return null;
        }
        // 去掉重复的 sql 语句
        HashSet sqlPartHash = new HashSet(sqlPartArray);
        sqlPartArray.clear();
        sqlPartArray.addAll(sqlPartHash);

        // 在and 查询
        //sourceSql += " and ";
        String splitRowSql = "";

        // 拼接相关的 sql 语句
        for (String item :sqlPartArray) {
            splitRowSql += " or " + item;
        }
        // 去掉第一个 or
        splitRowSql = splitRowSql.substring(splitRowSql.indexOf("or")+2,splitRowSql.length());
        // 拼接整一条sql
        String targetSql = "";
        targetSql = sourceSql + " and  ( " + splitRowSql + " )";
        return targetSql;
    }


    /**
     *  列 sql 的控制
     * @param sourceSql 原 sql 语句
     * @param sqlPartArray
     * @return
     */
    public static String CloumnDataSplitFilter(String sourceSql,List<String> sqlPartArray) {
        // 对每个 sql 片段进行字符分割,获取所有 sql 控制列
        List<String> CloumnList = new ArrayList<String>();
        if(sqlPartArray != null){
            for (String item:sqlPartArray) {
                String[] sourceStrArray = item.trim().split(",");
                for (String cloumbItem: sourceStrArray) {
                    CloumnList.add(cloumbItem);
                }
            }
        }
        // 对列去重
        HashSet sqlPartHash = new HashSet(CloumnList);
        CloumnList.clear();
        CloumnList.addAll(sqlPartHash);

        // 查找第一个 from 出现的地方
        int first = sourceSql.indexOf("FROM");
        // 截取 from 后面的字符串
        String sqlRowStr = sourceSql.substring(first);
        String sqlCloumnStr = "SELECT ";
        for (String item:CloumnList) {
            sqlCloumnStr += item + ", ";
        }
        // 去掉最后逗号
        sqlCloumnStr = sqlCloumnStr.substring(0,sqlCloumnStr.lastIndexOf(","));
        return sqlCloumnStr + "  "+sqlRowStr;
    }
}
