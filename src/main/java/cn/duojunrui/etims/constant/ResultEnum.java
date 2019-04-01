package cn.duojunrui.etims.constant;

public enum ResultEnum {
    SUCCESS(1,"成功"),
    FAILED(0,"参数错误"),
    UNKNOWN_ERROR(-1,"未知错误")
    ;

    private Integer code;
    private String message;

    ResultEnum(Integer code, String message) {
        this.code = code;
        this.message = message;
    }

    public Integer getCode() {
        return code;
    }

    public String getMessage() {
        return message;
    }
}
