package cn.duojunrui.etims.project.module.util;

import java.util.UUID;

/**
 * 生成32位UUID 唯一识别码
 *
 * @className: UUIDUtil
 * @author: Duojunrui
 * @date: 2019-04-28 13:27
 */

public class UUIDUtil {

    private UUIDUtil() {
    }

    public static String createUUID() {
        return UUID.randomUUID().toString().replace("-", "");
    }
}
