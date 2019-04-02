package cn.duojunrui.etims.exception;

import cn.duojunrui.etims.enums.ResultEnum;

public class EtimsException extends RuntimeException {

    private Integer code;

    public EtimsException(ResultEnum resultEnum) {
        super(resultEnum.getMessage());
        this.code = resultEnum.getCode();
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }
}
