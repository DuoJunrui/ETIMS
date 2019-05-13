package cn.duojunrui.etims.project.module.grade.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.duojunrui.etims.project.module.grade.mapper.GradeMapper;
import cn.duojunrui.etims.project.module.grade.domain.Grade;
import cn.duojunrui.etims.project.module.grade.service.IGradeService;
import cn.duojunrui.etims.common.utils.text.Convert;

import javax.annotation.Resource;

/**
 * 考核成绩 服务层实现
 *
 * @author Duojunrui
 * @date 2019-05-13
 */
@Service
public class GradeServiceImpl implements IGradeService {
    @Resource
    private GradeMapper gradeMapper;

    /**
     * 查询考核成绩信息
     *
     * @param gradeId 考核成绩ID
     * @return 考核成绩信息
     */
    @Override
    public Grade selectGradeById(Long gradeId) {
        return gradeMapper.selectGradeById(gradeId);
    }

    /**
     * 查询考核成绩列表
     *
     * @param grade 考核成绩信息
     * @return 考核成绩集合
     */
    @Override
    public List<Grade> selectGradeList(Grade grade) {
        return gradeMapper.selectGradeList(grade);
    }

    /**
     * 新增考核成绩
     *
     * @param grade 考核成绩信息
     * @return 结果
     */
    @Override
    public int insertGrade(Grade grade) {
        return gradeMapper.insertGrade(grade);
    }

    /**
     * 修改考核成绩
     *
     * @param grade 考核成绩信息
     * @return 结果
     */
    @Override
    public int updateGrade(Grade grade) {
        return gradeMapper.updateGrade(grade);
    }

    /**
     * 删除考核成绩对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteGradeByIds(String ids) {
        return gradeMapper.deleteGradeByIds(Convert.toStrArray(ids));
    }

}
