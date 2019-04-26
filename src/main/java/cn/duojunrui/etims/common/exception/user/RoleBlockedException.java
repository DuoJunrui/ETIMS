package cn.duojunrui.etims.common.exception.user;

/**
 * 角色锁定异常类
 *
 * @className: RoleBlockedException
 * @author: Duojunrui
 * @date: 2019-04-19 18:22
 */

public class RoleBlockedException extends UserException {
    private static final long serialVersionUID = 1L;

    public RoleBlockedException() {
        super("role.blocked" , null);
    }

}
