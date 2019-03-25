package cn.duojunrui.etims.constant;

public enum ResultEnum {
    SUCCESS(1,"成功"),
    FAILED(0,"参数错误"),
    UNKNOWN_ERROR(-1,"未知错误")
    ;

    private Integer code;
    private String msg;

    ResultEnum(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public Integer getCode() {
        return code;
    }

    public String getMsg() {
        return msg;
    }
}
