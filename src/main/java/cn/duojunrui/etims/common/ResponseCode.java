package cn.duojunrui.etims.common;

public enum  ResponseCode {

    SUCCESS(000,"操作成功"),
    ERROR(111,"创建失败"),
    SUCCESS_BUT_NULL(001, "数据为空"),

    FAILED(100,"参数错误"),
    DATA_NOT_NULL(101, "数据不能为空"),
    UNAUTHORIZED(401,"无访问权限，用户名或密码错误"),


    UNKNOWN_ERROR(999,"未知错误");

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
