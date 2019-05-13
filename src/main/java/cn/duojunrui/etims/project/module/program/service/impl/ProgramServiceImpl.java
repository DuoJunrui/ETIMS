package cn.duojunrui.etims.project.module.program.service.impl;

import java.util.List;

import cn.duojunrui.etims.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.duojunrui.etims.project.module.program.mapper.ProgramMapper;
import cn.duojunrui.etims.project.module.program.domain.Program;
import cn.duojunrui.etims.project.module.program.service.IProgramService;
import cn.duojunrui.etims.common.utils.text.Convert;

import javax.annotation.Resource;

/**
 * 教学计划 服务层实现
 *
 * @author Duojunrui
 * @date 2019-05-13
 */
@Service
public class ProgramServiceImpl implements IProgramService {
    @Resource
    private ProgramMapper programMapper;

    /**
     * 查询教学计划信息
     *
     * @param programId 教学计划ID
     * @return 教学计划信息
     */
    @Override
    public Program selectProgramById(Long programId) {
        return programMapper.selectProgramById(programId);
    }

    /**
     * 查询教学计划列表
     *
     * @param program 教学计划信息
     * @return 教学计划集合
     */
    @Override
    public List<Program> selectProgramList(Program program) {
        return programMapper.selectProgramList(program);
    }

    /**
     * 新增教学计划
     *
     * @param program 教学计划信息
     * @return 结果
     */
    @Override
    public int insertProgram(Program program) {
        program.setCreateTime(DateUtils.getNowDate());
        program.setDelFlag("0");
        return programMapper.insertProgram(program);
    }

    /**
     * 修改教学计划
     *
     * @param program 教学计划信息
     * @return 结果
     */
    @Override
    public int updateProgram(Program program) {
        return programMapper.updateProgram(program);
    }

    /**
     * 删除教学计划对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteProgramByIds(String ids) {
        return programMapper.deleteProgramByIds(Convert.toStrArray(ids));
    }

}
