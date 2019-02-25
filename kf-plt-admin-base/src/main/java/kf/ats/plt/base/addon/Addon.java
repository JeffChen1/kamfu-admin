/**
 *
 */
package kf.ats.plt.base.addon;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * 插件特性，用此特性修饰的类可以作为插件使用
 *
 * @author Daniel.liu(刘丹)
 *
 */
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
public @interface Addon {
    /**
     * 插件名称
     * @return 插件名称字符串
     */
    String name() default "";
    /**
     * 插件类属
     * 表示插件所属的类别，约定格式如："设备.打印设备"
     * @return 插件类属字符串
     */
    String category() default "";
    /**
     * 插件描述
     * @return 插件描述字符串
     */
    String description() default "";
    /**
     * 是否可以进行无类型的XML序列化
     * @return
     */
    boolean xmlKnown() default true;
}
