package cn.duojunrui.etims.project.module.analyze.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.duojunrui.etims.project.module.analyze.mapper.AnalyzeMapper;
import cn.duojunrui.etims.project.module.analyze.domain.Analyze;
import cn.duojunrui.etims.project.module.analyze.service.IAnalyzeService;
import cn.duojunrui.etims.common.utils.text.Convert;

import javax.annotation.Resource;

/**
 * 统计分析 服务层实现
 *
 * @author Duojunrui
 * @date 2019-05-17
 */
@Service
public class AnalyzeServiceImpl implements IAnalyzeService {
    @Resource
    private AnalyzeMapper analyzeMapper;

    /**
     * 查询统计分析信息
     *
     * @param analyzeId 统计分析ID
     * @return 统计分析信息
     */
    @Override
    public Analyze selectAnalyzeById(Integer analyzeId) {
        return analyzeMapper.selectAnalyzeById(analyzeId);
    }

    /**
     * 查询统计分析列表
     *
     * @param analyze 统计分析信息
     * @return 统计分析集合
     */
    @Override
    public List<Analyze> selectAnalyzeList(Analyze analyze) {
        return analyzeMapper.selectAnalyzeList(analyze);
    }

    /**
     * 新增统计分析
     *
     * @param analyze 统计分析信息
     * @return 结果
     */
    @Override
    public int insertAnalyze(Analyze analyze) {
        return analyzeMapper.insertAnalyze(analyze);
    }

    /**
     * 修改统计分析
     *
     * @param analyze 统计分析信息
     * @return 结果
     */
    @Override
    public int updateAnalyze(Analyze analyze) {
        return analyzeMapper.updateAnalyze(analyze);
    }

    /**
     * 删除统计分析对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteAnalyzeByIds(String ids) {
        return analyzeMapper.deleteAnalyzeByIds(Convert.toStrArray(ids));
    }

}
