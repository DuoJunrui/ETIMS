package cn.duojunrui.etims.project.module.grade.mapper;

import cn.duojunrui.etims.project.module.grade.domain.Grade;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 考核成绩 数据层
 *
 * @author Duojunrui
 * @date 2019-05-13
 */
@Mapper
public interface GradeMapper {
    /**
     * 查询考核成绩信息
     *
     * @param gradeId 考核成绩ID
     * @return 考核成绩信息
     */
    public Grade selectGradeById(Long gradeId);

    /**
     * 查询考核成绩列表
     *
     * @param grade 考核成绩信息
     * @return 考核成绩集合
     */
    public List<Grade> selectGradeList(Grade grade);

    /**
     * 新增考核成绩
     *
     * @param grade 考核成绩信息
     * @return 结果
     */
    public int insertGrade(Grade grade);

    /**
     * 修改考核成绩
     *
     * @param grade 考核成绩信息
     * @return 结果
     */
    public int updateGrade(Grade grade);

    /**
     * 删除考核成绩
     *
     * @param gradeId 考核成绩ID
     * @return 结果
     */
    public int deleteGradeById(Long gradeId);

    /**
     * 批量删除考核成绩
     *
     * @param gradeIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteGradeByIds(String[] gradeIds);

}