package cn.duojunrui.etims.entity;
import java.util.Date;

/**
 * 学生实习单位信息实体类
 */
public class PracticeMaterial {

    // 学生实习单位材料表ID （主键）
    private String id;
    // 学生姓名
    private String studentName;
    // 学生系别
    private String studentDepartment;
    // 学生班级
    private String studentClass;
    // 学生学号
    private String studentNumber;
    // 企业名称
    private String companyName;
    // 企业地址
    private String companyAddress;
    // 实习岗位
    private String position;
    // 实习开始时间
    private Date startTime;
    // 实习结束时间
    private Date endTime;
    // 企业负责人姓名
    private String principalName;
    // 企业负责人电话
    private String principalTel;
    // 实习材料文件
    private String fileMap;
    // 申请审核状态 （0表示已提交，1表示审核中，2表示审核通过，3表示审核不通过）
    private Integer applyStatus;
    // 申请提交时间
    private Date applyTime;
    // 申请反馈信息
    private String applyReply;
    // 创建时间
    private Date createTime;
    // 更新时间
    private Date updateTime;
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

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public String getStudentDepartment() {
        return studentDepartment;
    }

    public void setStudentDepartment(String studentDepartment) {
        this.studentDepartment = studentDepartment;
    }

    public String getStudentClass() {
        return studentClass;
    }

    public void setStudentClass(String studentClass) {
        this.studentClass = studentClass;
    }

    public String getStudentNumber() {
        return studentNumber;
    }

    public void setStudentNumber(String studentNumber) {
        this.studentNumber = studentNumber;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getCompanyAddress() {
        return companyAddress;
    }

    public void setCompanyAddress(String companyAddress) {
        this.companyAddress = companyAddress;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public String getPrincipalName() {
        return principalName;
    }

    public void setPrincipalName(String principalName) {
        this.principalName = principalName;
    }

    public String getPrincipalTel() {
        return principalTel;
    }

    public void setPrincipalTel(String principalTel) {
        this.principalTel = principalTel;
    }

    public String getFileMap() {
        return fileMap;
    }

    public void setFileMap(String fileMap) {
        this.fileMap = fileMap;
    }

    public Integer getApplyStatus() {
        return applyStatus;
    }

    public void setApplyStatus(Integer applyStatus) {
        this.applyStatus = applyStatus;
    }

    public Date getApplyTime() {
        return applyTime;
    }

    public void setApplyTime(Date applyTime) {
        this.applyTime = applyTime;
    }

    public String getApplyReply() {
        return applyReply;
    }

    public void setApplyReply(String applyReply) {
        this.applyReply = applyReply;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public Integer getIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(Integer isDeleted) {
        this.isDeleted = isDeleted;
    }
}
