package cn.duojunrui.etims.common.utils;

import java.util.HashMap;
import java.util.Map;

/**
 * TODO
 *
 * @className: ResultUtils
 * @author: Duojunrui
 * @date: 2019-04-16 17:01
 */

public class ResultUtils extends HashMap<String, Object> {

    private static final long serialVersionUID = 1L;

    public ResultUtils() {
        put("code", 0);
        put("msg", "操作成功");
    }

    public static ResultUtils error() {
        return error(1, "操作失败");
    }

    public static ResultUtils error(String msg) {
        return error(500, msg);
    }

    public static ResultUtils error(int code, String msg) {
        ResultUtils result = new ResultUtils();
        result.put("code", code);
        result.put("msg", msg);
        return result;
    }

    public static ResultUtils ok(String msg) {
        ResultUtils result = new ResultUtils();
        result.put("msg", msg);
        return result;
    }

    public static ResultUtils ok(Map<String, Object> map) {
        ResultUtils result = new ResultUtils();
        result.putAll(map);
        return result;
    }

    public static ResultUtils ok() {
        return new ResultUtils();
    }

    @Override
    public ResultUtils put(String key, Object value) {
        super.put(key, value);
        return this;
    }
}
