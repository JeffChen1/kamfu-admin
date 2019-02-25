package kf.plt.admin.auth.datacontrol.annotation;


import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * 忽略数据权限认证用于 mapper自定义方法上
 * @author  麦锦超
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
public @interface IgnoreDataMapperMethod {
}
