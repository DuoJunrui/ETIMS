package cn.duojunrui.etims.enums;

public enum ResultEnum {

    SUCCESS(000,"操作成功"),
    SUCCESS_BUT_NULL(001, "数据为空"),

    FAILED(100,"参数错误"),
    DATA_NOT_NULL(101, "数据不能为空"),


    UNKNOWN_ERROR(999,"未知错误");

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
