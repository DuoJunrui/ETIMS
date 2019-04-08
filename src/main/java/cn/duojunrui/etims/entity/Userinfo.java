package cn.duojunrui.etims.entity;

import javax.validation.constraints.NotBlank;

/**
 * 用户信息实体类
 */
public class Userinfo {

    // 用户信息主键ID
    private String id;
    // 用户账号ID
    private String userId;
    // 账号密码
    private String password;
    // 用户姓名
    private String userName;
    // 用户性别
    private String userSex;
    // 用户照片
    private String photoMap;
    // 用户角色(0-超级管理员，1-管理员，2-教师，3-学生)
    private Integer userRole;
    // 用户电话
    private String userTel;
    // 用户邮箱
    private String userEmail;
    // 学生角色所在年级
    private String studentGrade;
    // 学生角色所在班级
    private String studentClass;
    // 学生角色学号
    private String studentId;
    // 学生角色专业
    private String studentMajor;
    // 职工工号
    private String staffId;
    // 职工所在部门
    private String staffPart;
    // 审核状态审核状态(0-完善资料，1-审核中，2-审核通过，3-审核不通过)
    private Integer checkStatus;
    // 创建时间
    private Long createTime;
    // 最后更新时间
    private Long updateTime;
    // 是否删除（1表示删除，0表示未删除）
    private Integer isDeleted;

    /*
    Getter、Setter 方法
     */
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserSex() {
        return userSex;
    }

    public void setUserSex(String userSex) {
        this.userSex = userSex;
    }

    public String getPhotoMap() {
        return photoMap;
    }

    public void setPhotoMap(String photoMap) {
        this.photoMap = photoMap;
    }

    public Integer getUserRole() {
        return userRole;
    }

    public void setUserRole(Integer userRole) {
        this.userRole = userRole;
    }

    public String getUserTel() {
        return userTel;
    }

    public void setUserTel(String userTel) {
        this.userTel = userTel;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getStudentGrade() {
        return studentGrade;
    }

    public void setStudentGrade(String studentGrade) {
        this.studentGrade = studentGrade;
    }

    public String getStudentClass() {
        return studentClass;
    }

    public void setStudentClass(String studentClass) {
        this.studentClass = studentClass;
    }

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public String getStudentMajor() {
        return studentMajor;
    }

    public void setStudentMajor(String studentMajor) {
        this.studentMajor = studentMajor;
    }

    public String getStaffId() {
        return staffId;
    }

    public void setStaffId(String staffId) {
        this.staffId = staffId;
    }

    public String getStaffPart() {
        return staffPart;
    }

    public void setStaffPart(String staffPart) {
        this.staffPart = staffPart;
    }

    public Integer getCheckStatus() {
        return checkStatus;
    }

    public void setCheckStatus(Integer checkStatus) {
        this.checkStatus = checkStatus;
    }

    public Long getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Long createTime) {
        this.createTime = createTime;
    }

    public Long getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Long updateTime) {
        this.updateTime = updateTime;
    }

    public Integer getIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(Integer isDeleted) {
        this.isDeleted = isDeleted;
    }
}
