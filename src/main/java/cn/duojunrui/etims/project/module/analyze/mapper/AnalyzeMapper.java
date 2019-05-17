package cn.duojunrui.etims.project.module.analyze.mapper;

import cn.duojunrui.etims.project.module.analyze.domain.Analyze;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 统计分析 数据层
 *
 * @author Duojunrui
 * @date 2019-05-17
 */
@Mapper
public interface AnalyzeMapper {
    /**
     * 查询统计分析信息
     *
     * @param analyzeId 统计分析ID
     * @return 统计分析信息
     */
    public Analyze selectAnalyzeById(Integer analyzeId);

    /**
     * 查询统计分析列表
     *
     * @param analyze 统计分析信息
     * @return 统计分析集合
     */
    public List<Analyze> selectAnalyzeList(Analyze analyze);

    /**
     * 新增统计分析
     *
     * @param analyze 统计分析信息
     * @return 结果
     */
    public int insertAnalyze(Analyze analyze);

    /**
     * 修改统计分析
     *
     * @param analyze 统计分析信息
     * @return 结果
     */
    public int updateAnalyze(Analyze analyze);

    /**
     * 删除统计分析
     *
     * @param analyzeId 统计分析ID
     * @return 结果
     */
    public int deleteAnalyzeById(Integer analyzeId);

    /**
     * 批量删除统计分析
     *
     * @param analyzeIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteAnalyzeByIds(String[] analyzeIds);

}