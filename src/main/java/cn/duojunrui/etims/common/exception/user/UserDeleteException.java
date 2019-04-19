package cn.duojunrui.etims.common.exception.user;

/**
 * 用户账号已被删除
 *
 * @className: UserDeleteException
 * @author: Duojunrui
 * @date: 2019-04-19 18:24
 */

public class UserDeleteException extends UserException {
    private static final long serialVersionUID = 1L;

    public UserDeleteException() {
        super("user.password.delete", null);
    }
}
