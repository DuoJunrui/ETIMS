package cn.duojunrui.etims.common.utils;

import cn.duojunrui.etims.common.utils.spring.SpringUtils;
import org.springframework.context.MessageSource;

/**
 * 获取i18n资源文件
 *
 * @className: MessageUtils
 * @author: Duojunrui
 * @date: 2019-04-19 18:55
 */

public class MessageUtils {
    /**
     * 根据消息键和参数 获取消息 委托给spring messageSource
     *
     * @param code 消息键
     * @param args 参数
     * @return
     */
    public static String message(String code, Object... args) {
        MessageSource messageSource = SpringUtils.getBean(MessageSource.class);
        return messageSource.getMessage(code, args, null);
    }
}
