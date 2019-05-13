package cn.duojunrui.etims.project.module.practice.mapper;

import cn.duojunrui.etims.project.module.practice.domain.Practice;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 顶岗实习 数据层
 *
 * @author Duojunrui
 * @date 2019-05-13
 */
@Mapper
public interface PracticeMapper {
    /**
     * 查询顶岗实习信息
     *
     * @param practiceId 顶岗实习ID
     * @return 顶岗实习信息
     */
    public Practice selectPracticeById(Long practiceId);

    /**
     * 查询顶岗实习列表
     *
     * @param practice 顶岗实习信息
     * @return 顶岗实习集合
     */
    public List<Practice> selectPracticeList(Practice practice);

    /**
     * 新增顶岗实习
     *
     * @param practice 顶岗实习信息
     * @return 结果
     */
    public int insertPractice(Practice practice);

    /**
     * 修改顶岗实习
     *
     * @param practice 顶岗实习信息
     * @return 结果
     */
    public int updatePractice(Practice practice);

    /**
     * 删除顶岗实习
     *
     * @param practiceId 顶岗实习ID
     * @return 结果
     */
    public int deletePracticeById(Long practiceId);

    /**
     * 批量删除顶岗实习
     *
     * @param practiceIds 需要删除的数据ID
     * @return 结果
     */
    public int deletePracticeByIds(String[] practiceIds);

}