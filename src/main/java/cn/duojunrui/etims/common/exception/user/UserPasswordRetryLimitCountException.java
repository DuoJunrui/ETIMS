package cn.duojunrui.etims.common.exception.user;

/**
 * 用户错误记数异常类
 *
 * @className: UserPasswordRetryLimitCountException
 * @author: Duojunrui
 * @date: 2019-04-19 18:26
 */

public class UserPasswordRetryLimitCountException extends UserException {
    private static final long serialVersionUID = 1L;

    public UserPasswordRetryLimitCountException(int retryLimitCount) {
        super("user.password.retry.limit.count" , new Object[]{retryLimitCount});
    }
}
