package kf.plt.admin.auth.datacontrol.util;


import kf.plt.admin.auth.datacontrol.annotation.IgnoreDataMapper;
import kf.plt.admin.auth.datacontrol.annotation.IgnoreDataMapperMethod;
import org.apache.ibatis.mapping.MappedStatement;

import java.lang.reflect.Method;


/**
 * 自定义权限工具类
 * @author maijinchao
 * @Ccreate 2018-12-07-8:38 AM
 */
public class DataPermissionUtils {

    /**
     * 判断Mapper是否有忽略数据权限的鉴权
     * @param mappedStatement 获取注解的对象
     * @return 有 IgnoreDataMapper 注解返回 true ,没有返回false
     */
    public static Boolean getMapperPermissionByDelegate(MappedStatement mappedStatement){
            // 获取 mapper 的命名空间,进行反射.
        String id = mappedStatement.getId();
        return getMapperPermissionByStr(id);
    }


    /**
     * 通过mapper命名空间字符串判断,是否有忽略数据权限的鉴权
     * @param nameSpace 命名空间字符串
     * @return
     */
    public static Boolean getMapperPermissionByStr(String nameSpace) {
        boolean isPermission = false;
        try {
            // 获取 mapper 的命名空间,进行反射
            String className = nameSpace.substring(0, nameSpace.lastIndexOf("."));
            Class cls = Class.forName(className);
            isPermission = cls.isAnnotationPresent(IgnoreDataMapper.class);
        }catch (Exception e){
            e.printStackTrace();
        }
        return isPermission;
    }


    /**
     *  判断Mapper 方法是否有忽略数据权限的鉴权
     * @param mappedStatement 获取注解的对象
     * @return 调用 mapper 函数有忽略权限注解 就返回true
     */
    public static Boolean getMethodPermissionByDelegate(MappedStatement mappedStatement) {
        boolean isPermission = false;
        try{
            // 获取 mapper 的命名空间,进行反射.
            String id = mappedStatement.getId();
            String className = id.substring(0, id.lastIndexOf("."));
            String methodName = id.substring(id.lastIndexOf(".") + 1, id.length());
            Class cls = Class.forName(className);
            final Method[] method = cls.getMethods();
            // 遍历函数名,函数名一样以及有忽略权限注解
            for (Method me : method) {
                if (me.getName().equals(methodName) && me.isAnnotationPresent(IgnoreDataMapperMethod.class)) {
                    isPermission = true;
                }
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return isPermission;
    }
}
