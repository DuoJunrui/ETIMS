package cn.duojunrui.etims.project.module.practice.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import cn.duojunrui.etims.framework.web.domain.BaseEntity;

import java.util.Date;

/**
 * 顶岗实习表 mod_practice
 *
 * @author Duojunrui
 * @date 2019-05-13
 */
public class Practice extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 实习单位材料
     */
    private Long practiceId;
    /**
     * 学生姓名
     */
    private String studentName;
    /**
     * 学生系别
     */
    private String studentDepartment;
    /**
     * 学生班级
     */
    private String studentClass;
    /**
     * 学生学号
     */
    private String studentNumber;
    /**
     * 企业名称
     */
    private String companyName;
    /**
     * 公司地址
     */
    private String companyAddress;
    /**
     * 实习实践岗位
     */
    private String position;
    /**
     * 实习开始时间
     */
    private Date startTime;
    /**
     * 实习结束时间
     */
    private Date endTime;
    /**
     * 企业负责人姓名
     */
    private String principalName;
    /**
     * 企业负责人电话
     */
    private String principalTel;
    /**
     * 申请文件材料
     */
    private String filePath;
    /**
     * 审核状态(0表示已提交，1表示审核中，2表示审核通过，3表示审核不通过)
     */
    private Integer applyStatus;
    /**
     * 提交时间
     */
    private Date applyTime;
    /**
     * 驳回反馈
     */
    private String applyReply;
    /**
     * 删除标志（0代表存在 1代表删除）
     */
    private String delFlag;

    public void setPracticeId(Long practiceId) {
        this.practiceId = practiceId;
    }

    public Long getPracticeId() {
        return practiceId;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentDepartment(String studentDepartment) {
        this.studentDepartment = studentDepartment;
    }

    public String getStudentDepartment() {
        return studentDepartment;
    }

    public void setStudentClass(String studentClass) {
        this.studentClass = studentClass;
    }

    public String getStudentClass() {
        return studentClass;
    }

    public void setStudentNumber(String studentNumber) {
        this.studentNumber = studentNumber;
    }

    public String getStudentNumber() {
        return studentNumber;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyAddress(String companyAddress) {
        this.companyAddress = companyAddress;
    }

    public String getCompanyAddress() {
        return companyAddress;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getPosition() {
        return position;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setPrincipalName(String principalName) {
        this.principalName = principalName;
    }

    public String getPrincipalName() {
        return principalName;
    }

    public void setPrincipalTel(String principalTel) {
        this.principalTel = principalTel;
    }

    public String getPrincipalTel() {
        return principalTel;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    public String getFilePath() {
        return filePath;
    }

    public void setApplyStatus(Integer applyStatus) {
        this.applyStatus = applyStatus;
    }

    public Integer getApplyStatus() {
        return applyStatus;
    }

    public void setApplyTime(Date applyTime) {
        this.applyTime = applyTime;
    }

    public Date getApplyTime() {
        return applyTime;
    }

    public void setApplyReply(String applyReply) {
        this.applyReply = applyReply;
    }

    public String getApplyReply() {
        return applyReply;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag;
    }

    public String getDelFlag() {
        return delFlag;
    }

    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("practiceId", getPracticeId())
                .append("studentName", getStudentName())
                .append("studentDepartment", getStudentDepartment())
                .append("studentClass", getStudentClass())
                .append("studentNumber", getStudentNumber())
                .append("companyName", getCompanyName())
                .append("companyAddress", getCompanyAddress())
                .append("position", getPosition())
                .append("startTime", getStartTime())
                .append("endTime", getEndTime())
                .append("principalName", getPrincipalName())
                .append("principalTel", getPrincipalTel())
                .append("filePath", getFilePath())
                .append("applyStatus", getApplyStatus())
                .append("applyTime", getApplyTime())
                .append("applyReply", getApplyReply())
                .append("createTime", getCreateTime())
                .append("updateTime", getUpdateTime())
                .append("delFlag", getDelFlag())
                .toString();
    }
}
