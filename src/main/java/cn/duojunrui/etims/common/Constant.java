package cn.duojunrui.etims.common;

public class Constant {

    public static final String CURRENT_USER = "currentUser";
    public static final String USEREMAIL = "userEmail";
    public static final String USERID = "userId";

    // 是否删除
    public interface isDeleted {
        int DELETED = 1; // 已删除
        int NOT_DELETED = 0; // 未删除
    }

    // 用户角色
    public interface userRole {
        int ROLE_SUPER_ADMIN = 0; // 超级管理员
        int ROLE_ADMIN = 1; // 普通管理员
        int ROLE_STAFF = 2; // 教职工
        int ROLE_STUDENT = 3; // 学生
    }

    // 资料审核状态
    public interface checkStatus {
        int CHECK_SUPPLEMENT = 0; // 待完善资料
        int CHECK_CHECHING = 1; // 审核中
        int CHECK_PASS = 2; // 审核通过
        int CHECK_NO_PASS = 3; // 审核不通过
    }


}
