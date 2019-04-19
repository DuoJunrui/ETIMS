package cn.duojunrui.etims.common.exception.user;

/**
 * 验证码错误异常类
 *
 * @className: CaptchaException
 * @author: Duojunrui
 * @date: 2019-04-19 18:03
 */

public class CaptchaException extends UserException {
    private static final long serialVersionUID = 1L;

    public CaptchaException() {
        super("user.jcaptcha.error", null);
    }
}
