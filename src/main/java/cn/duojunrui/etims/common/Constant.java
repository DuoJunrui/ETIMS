package cn.duojunrui.etims.common;

public class Constant {

    public static final String CURRENT_USER = "currentUser";

    public interface userRole {
        int ROLE_SUPER_ADMIN = 0; // 超级管理员
        int ROLE_ADMIN = 1; // 普通管理员
        int ROLE_STAFF = 2; // 教职工
        int ROLE_STUDENT = 3; // 学生
    }
}
