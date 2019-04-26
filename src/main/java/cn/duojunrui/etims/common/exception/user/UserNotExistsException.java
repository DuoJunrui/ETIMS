package cn.duojunrui.etims.common.exception.user;

/**
 * 用户不存在异常类
 *
 * @className: UserNotExistsException
 * @author: Duojunrui
 * @date: 2019-04-19 18:25
 */

public class UserNotExistsException extends UserException {
    private static final long serialVersionUID = 1L;

    public UserNotExistsException() {
        super("user.not.exists" , null);
    }
}
