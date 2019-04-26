package cn.duojunrui.etims.common.exception.user;

/**
 * 用户锁定异常类
 *
 * @className: UserBlockedException
 * @author: Duojunrui
 * @date: 2019-04-19 18:24
 */

public class UserBlockedException extends UserException {
    private static final long serialVersionUID = 1L;

    public UserBlockedException() {
        super("user.blocked" , null);
    }
}
