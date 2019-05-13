package cn.duojunrui.etims.project.module.grade.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import cn.duojunrui.etims.framework.web.domain.BaseEntity;

/**
 * 考核成绩表 mod_grade
 *
 * @author Duojunrui
 * @date 2019-05-13
 */
public class Grade extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 考核成绩管理
     */
    private Long gradeId;
    /**
     * 学生学号
     */
    private String stuId;
    /**
     * 学生姓名
     */
    private String stuName;
    /**
     * 学期
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
     * 平时成绩
     */
    private Integer usualScore;
    /**
     * 考核成绩
     */
    private Integer examScore;
    /**
     * 总评成绩
     */
    private Integer totalScore;
    /**
     * 考核类型（重修、正考、补考）
     */
    private String checkType;
    /**
     * 删除标志（0代表存在 1代表删除）
     */
    private String delFlag;

    public void setGradeId(Long gradeId) {
        this.gradeId = gradeId;
    }

    public Long getGradeId() {
        return gradeId;
    }

    public void setStuId(String stuId) {
        this.stuId = stuId;
    }

    public String getStuId() {
        return stuId;
    }

    public void setStuName(String stuName) {
        this.stuName = stuName;
    }

    public String getStuName() {
        return stuName;
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

    public void setUsualScore(Integer usualScore) {
        this.usualScore = usualScore;
    }

    public Integer getUsualScore() {
        return usualScore;
    }

    public void setExamScore(Integer examScore) {
        this.examScore = examScore;
    }

    public Integer getExamScore() {
        return examScore;
    }

    public void setTotalScore(Integer totalScore) {
        this.totalScore = totalScore;
    }

    public Integer getTotalScore() {
        return totalScore;
    }

    public void setCheckType(String checkType) {
        this.checkType = checkType;
    }

    public String getCheckType() {
        return checkType;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag;
    }

    public String getDelFlag() {
        return delFlag;
    }

    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("gradeId", getGradeId())
                .append("stuId", getStuId())
                .append("stuName", getStuName())
                .append("semester", getSemester())
                .append("courseId", getCourseId())
                .append("courseName", getCourseName())
                .append("courseCredit", getCourseCredit())
                .append("usualScore", getUsualScore())
                .append("examScore", getExamScore())
                .append("totalScore", getTotalScore())
                .append("checkType", getCheckType())
                .append("createTime", getCreateTime())
                .append("updateTime", getUpdateTime())
                .append("delFlag", getDelFlag())
                .toString();
    }
}
