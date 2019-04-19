package cn.duojunrui.etims.common.exception.user;

/**
 * 用户错误最大次数异常类
 *
 * @className: UserPasswordRetryLimitExceedException
 * @author: Duojunrui
 * @date: 2019-04-19 18:26
 */

public class UserPasswordRetryLimitExceedException extends UserException {

    private static final long serialVersionUID = 1L;

    public UserPasswordRetryLimitExceedException(int retryLimitCount) {
        super("user.password.retry.limit.exceed", new Object[]{retryLimitCount});
    }
}
