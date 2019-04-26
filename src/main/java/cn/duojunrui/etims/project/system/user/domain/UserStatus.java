package cn.duojunrui.etims.project.system.user.domain;

/**
 * 用户状态
 *
 * @enumName: UserStatus
 * @author: Duojunrui
 * @date: 2019-04-19 21:36
 */

public enum UserStatus {
    OK("0" , "正常"), DISABLE("1" , "停用"), DELETED("2" , "删除");

    private final String code;
    private final String info;

    UserStatus(String code, String info) {
        this.code = code;
        this.info = info;
    }

    public String getCode() {
        return code;
    }

    public String getInfo() {
        return info;
    }
}
