package cn.duojunrui.etims.project.module.practice.service.impl;

import java.util.List;

import cn.duojunrui.etims.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.duojunrui.etims.project.module.practice.mapper.PracticeMapper;
import cn.duojunrui.etims.project.module.practice.domain.Practice;
import cn.duojunrui.etims.project.module.practice.service.IPracticeService;
import cn.duojunrui.etims.common.utils.text.Convert;

import javax.annotation.Resource;

/**
 * 顶岗实习 服务层实现
 *
 * @author Duojunrui
 * @date 2019-05-13
 */
@Service
public class PracticeServiceImpl implements IPracticeService {
    @Resource
    private PracticeMapper practiceMapper;

    /**
     * 查询顶岗实习信息
     *
     * @param practiceId 顶岗实习ID
     * @return 顶岗实习信息
     */
    @Override
    public Practice selectPracticeById(Long practiceId) {
        return practiceMapper.selectPracticeById(practiceId);
    }

    /**
     * 查询顶岗实习列表
     *
     * @param practice 顶岗实习信息
     * @return 顶岗实习集合
     */
    @Override
    public List<Practice> selectPracticeList(Practice practice) {
        return practiceMapper.selectPracticeList(practice);
    }

    /**
     * 新增顶岗实习
     *
     * @param practice 顶岗实习信息
     * @return 结果
     */
    @Override
    public int insertPractice(Practice practice) {
        practice.setApplyStatus(0);
        practice.setApplyTime(DateUtils.getNowDate());
        practice.setCreateTime(DateUtils.getNowDate());
        practice.setDelFlag("0");
        return practiceMapper.insertPractice(practice);
    }

    /**
     * 修改顶岗实习
     *
     * @param practice 顶岗实习信息
     * @return 结果
     */
    @Override
    public int updatePractice(Practice practice) {
        return practiceMapper.updatePractice(practice);
    }

    /**
     * 删除顶岗实习对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deletePracticeByIds(String ids) {
        return practiceMapper.deletePracticeByIds(Convert.toStrArray(ids));
    }

}
