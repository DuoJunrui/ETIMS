package cn.duojunrui.etims.project.module.program.mapper;

import cn.duojunrui.etims.project.module.program.domain.Program;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 教学计划 数据层
 *
 * @author Duojunrui
 * @date 2019-05-13
 */
@Mapper
public interface ProgramMapper {
    /**
     * 查询教学计划信息
     *
     * @param programId 教学计划ID
     * @return 教学计划信息
     */
    public Program selectProgramById(Long programId);

    /**
     * 查询教学计划列表
     *
     * @param program 教学计划信息
     * @return 教学计划集合
     */
    public List<Program> selectProgramList(Program program);

    /**
     * 新增教学计划
     *
     * @param program 教学计划信息
     * @return 结果
     */
    public int insertProgram(Program program);

    /**
     * 修改教学计划
     *
     * @param program 教学计划信息
     * @return 结果
     */
    public int updateProgram(Program program);

    /**
     * 删除教学计划
     *
     * @param programId 教学计划ID
     * @return 结果
     */
    public int deleteProgramById(Long programId);

    /**
     * 批量删除教学计划
     *
     * @param programIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteProgramByIds(String[] programIds);

}