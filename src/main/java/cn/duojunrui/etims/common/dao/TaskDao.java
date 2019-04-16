package cn.duojunrui.etims.common.dao;

import cn.duojunrui.etims.common.domain.TaskDO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

/**
 * TODO
 *
 * @interfaceName: TaskDao
 * @author: Duojunrui
 * @date: 2019-04-16 17:17
 */

@Mapper
public interface TaskDao {

    TaskDO get(Long id);

    List<TaskDO> list(Map<String,Object> map);

    int count(Map<String,Object> map);

    int save(TaskDO task);

    int update(TaskDO task);

    int remove(Long id);

    int batchRemove(Long[] ids);
}
