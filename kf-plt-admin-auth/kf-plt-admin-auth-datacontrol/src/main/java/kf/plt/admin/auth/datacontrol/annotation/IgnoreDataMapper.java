package kf.plt.admin.auth.datacontrol.annotation;


import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 *  忽略数据权限注解,用于 dao 层,即用于mapper
 *  @author  麦锦超
 */
@Target(ElementType.TYPE)
@Retention(RetentionPolicy.RUNTIME)
public @interface IgnoreDataMapper {
}
