package cn.duojunrui.etims.common.dao;

import cn.duojunrui.etims.common.domain.LogDO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

/**
 * TODO
 *
 * @interfaceName: LogDao
 * @author: Duojunrui
 * @date: 2019-04-16 17:17
 */

@Mapper
public interface LogDao {

    LogDO get(Long id);

    List<LogDO> list(Map<String,Object> map);

    int count(Map<String,Object> map);

    int save(LogDO log);

    int update(LogDO log);

    int remove(Long id);

    int batchRemove(Long[] ids);
}
