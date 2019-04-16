package cn.duojunrui.etims.common.utils;

/**
 * TODO
 *
 * @className: EtimsException
 * @author: Duojunrui
 * @date: 2019-04-16 16:52
 */

public class EtimsException extends RuntimeException {
    private static final long serialVersionUID = 1L;

    private String msg;
    private int code = 500;

    public EtimsException(String msg) {
        super(msg);
        this.msg = msg;
    }

    public EtimsException(String msg, Throwable e) {
        super(msg, e);
        this.msg = msg;
    }

    public EtimsException(String msg, int code) {
        super(msg);
        this.msg = msg;
        this.code = code;
    }

    public EtimsException(String msg, int code, Throwable e) {
        super(msg, e);
        this.msg = msg;
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }


}