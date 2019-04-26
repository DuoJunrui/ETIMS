package cn.duojunrui.etims.framework.aspectj.lang.annotation;

import java.lang.annotation.*;

/**
 * 数据权限过滤注解
 *
 * @@interfaceName: DataScope
 * @author: Duojunrui
 * @date: 2019-04-19 19:24
 */

@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface DataScope {
    /**
     * 表的别名
     */
    public String tableAlias() default "";
}
