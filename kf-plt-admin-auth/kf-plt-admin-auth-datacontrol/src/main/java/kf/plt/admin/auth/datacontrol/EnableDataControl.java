package kf.plt.admin.auth.datacontrol;


import kf.plt.admin.auth.datacontrol.configuration.AutoDataConfiguration;
import org.springframework.context.annotation.Import;

import java.lang.annotation.*;

/**
 * 启动数据权限注解
 * @author 麦锦超
 */
@Target(ElementType.TYPE)
@Retention(RetentionPolicy.RUNTIME)
@Import(AutoDataConfiguration.class)
@Documented
@Inherited
public @interface EnableDataControl {
}
