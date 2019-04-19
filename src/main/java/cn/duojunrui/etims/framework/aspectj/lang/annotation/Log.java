package cn.duojunrui.etims.framework.aspectj.lang.annotation;

import java.lang.annotation.*;

/**
 * 自定义操作日志记录注解
 *
 * @@interfaceName: Log
 * @author: Duojunrui
 * @date: 2019-04-19 19:26
 */

@Target({ElementType.PARAMETER, ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface Log {
    /**
     * 模块
     */
    public String title() default "";

    /**
     * 功能
     */
    public BusinessType businessType() default BusinessType.OTHER;

    /**
     * 操作人类别
     */
    public OperatorType operatorType() default OperatorType.MANAGE;

    /**
     * 是否保存请求的参数
     */
    public boolean isSaveRequestData() default true;
}
