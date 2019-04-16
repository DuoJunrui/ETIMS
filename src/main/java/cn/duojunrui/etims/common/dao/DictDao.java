package cn.duojunrui.etims.common.dao;

import cn.duojunrui.etims.common.domain.DictDO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

/**
 * TODO
 *
 * @interfaceName: DictDao
 * @author: Duojunrui
 * @date: 2019-04-16 17:15
 */

@Mapper
public interface DictDao {

    DictDO get(Long id);

    List<DictDO> list(Map<String, Object> map);

    int count(Map<String, Object> map);

    int save(DictDO dict);

    int update(DictDO dict);

    int remove(Long id);

    int batchRemove(Long[] ids);

    List<DictDO> listType();
}
