package cn.duojunrui.etims.common.exception.user;

/**
 * 用户密码不正确或不符合规范异常类
 *
 * @className: UserPasswordNotMatchException
 * @author: Duojunrui
 * @date: 2019-04-19 18:25
 */

public class UserPasswordNotMatchException extends UserException {
    private static final long serialVersionUID = 1L;

    public UserPasswordNotMatchException() {
        super("user.password.not.match" , null);
    }
}
