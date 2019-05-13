package cn.duojunrui.etims.project.module.program.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import cn.duojunrui.etims.framework.web.domain.BaseEntity;

/**
 * 教学计划表 mod_program
 *
 * @author Duojunrui
 * @date 2019-05-13
 */
public class Program extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 课程计划管理
     */
    private Long programId;
    /**
     * 教师工号
     */
    private String teachId;
    /**
     * 教师姓名
     */
    private String teachName;
    /**
     * 开设学期
     */
    private String semester;
    /**
     * 课程序号
     */
    private String courseId;
    /**
     * 课程名称
     */
    private String courseName;
    /**
     * 课程学分
     */
    private Integer courseCredit;
    /**
     * 开设院系
     */
    private String setDepart;
    /**
     * 开设专业
     */
    private String setMajor;
    /**
     * 平时成绩占比
     */
    private Integer usualScoreRatio;
    /**
     * 考核成绩占比
     */
    private Integer examScoreRatio;
    /**
     * 删除标志（0代表存在 1代表删除）
     */
    private String delFlag;

    public void setProgramId(Long programId) {
        this.programId = programId;
    }

    public Long getProgramId() {
        return programId;
    }

    public void setTeachId(String teachId) {
        this.teachId = teachId;
    }

    public String getTeachId() {
        return teachId;
    }

    public void setTeachName(String teachName) {
        this.teachName = teachName;
    }

    public String getTeachName() {
        return teachName;
    }

    public void setSemester(String semester) {
        this.semester = semester;
    }

    public String getSemester() {
        return semester;
    }

    public void setCourseId(String courseId) {
        this.courseId = courseId;
    }

    public String getCourseId() {
        return courseId;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseCredit(Integer courseCredit) {
        this.courseCredit = courseCredit;
    }

    public Integer getCourseCredit() {
        return courseCredit;
    }

    public void setSetDepart(String setDepart) {
        this.setDepart = setDepart;
    }

    public String getSetDepart() {
        return setDepart;
    }

    public void setSetMajor(String setMajor) {
        this.setMajor = setMajor;
    }

    public String getSetMajor() {
        return setMajor;
    }

    public void setUsualScoreRatio(Integer usualScoreRatio) {
        this.usualScoreRatio = usualScoreRatio;
    }

    public Integer getUsualScoreRatio() {
        return usualScoreRatio;
    }

    public void setExamScoreRatio(Integer examScoreRatio) {
        this.examScoreRatio = examScoreRatio;
    }

    public Integer getExamScoreRatio() {
        return examScoreRatio;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag;
    }

    public String getDelFlag() {
        return delFlag;
    }

    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("programId", getProgramId())
                .append("teachId", getTeachId())
                .append("teachName", getTeachName())
                .append("semester", getSemester())
                .append("courseId", getCourseId())
                .append("courseName", getCourseName())
                .append("courseCredit", getCourseCredit())
                .append("setDepart", getSetDepart())
                .append("setMajor", getSetMajor())
                .append("usualScoreRatio", getUsualScoreRatio())
                .append("examScoreRatio", getExamScoreRatio())
                .append("createTime", getCreateTime())
                .append("updateTime", getUpdateTime())
                .append("delFlag", getDelFlag())
                .toString();
    }
}
