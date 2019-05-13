package cn.duojunrui.etims.project.module.grade.service;

import cn.duojunrui.etims.project.module.grade.domain.Grade;

import java.util.List;

/**
 * 考核成绩 服务层
 *
 * @author Duojunrui
 * @date 2019-05-13
 */
public interface IGradeService {
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
     * 删除考核成绩信息
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteGradeByIds(String ids);

}
