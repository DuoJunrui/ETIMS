package cn.duojunrui.etims.common;
/**
* @description: TODO
* @author Duojunrui
* @date 2019/4/13 23:51
*/
public enum ResponseCode {

    // 返回成功
    SUCCESS(100, "操作成功"),
    SUCCESS_BUT_NULL(101, "数据为空"),

    ERROR(111, "创建失败"),
    NEED_LOGIN(222, "需要登录"),

    FAILED(200, "参数错误"),
    DATA_NOT_NULL(201, "数据不能为空"),
    UNAUTHORIZED(201, "无访问权限，用户名或密码错误"),

    UNKNOWN_ERROR(999, "未知错误");

    private final int code;
    private final String desc;

    ResponseCode(int code, String desc) {
        this.code = code;
        this.desc = desc;
    }

    public int getCode() {
        return code;
    }

    public String getDesc() {
        return desc;
    }
}
