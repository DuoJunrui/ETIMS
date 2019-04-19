package cn.duojunrui.etims.common.exception;

/**
 * 业务异常
 *
 * @className: BusinessException
 * @author: Duojunrui
 * @date: 2019-04-19 17:58
 */

public class BusinessException extends RuntimeException {
    private static final long serialVersionUID = 1L;

    protected final String message;

    public BusinessException(String message) {
        this.message = message;
    }

    public BusinessException(String message, Throwable e) {
        super(message, e);
        this.message = message;
    }

    @Override
    public String getMessage() {
        return message;
    }
}
