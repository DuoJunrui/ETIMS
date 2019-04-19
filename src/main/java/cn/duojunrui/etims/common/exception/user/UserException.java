package cn.duojunrui.etims.common.exception.user;

import cn.duojunrui.etims.common.exception.base.BaseException;

/**
 * 用户信息异常类
 *
 * @className: UserException
 * @author: Duojunrui
 * @date: 2019-04-19 18:24
 */

public class UserException extends BaseException {
    private static final long serialVersionUID = 1L;

    public UserException(String code, Object[] args) {
        super("user", code, args, null);
    }

}
