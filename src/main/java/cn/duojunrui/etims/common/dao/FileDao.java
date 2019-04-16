package cn.duojunrui.etims.common.dao;

import cn.duojunrui.etims.common.domain.FileDO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

/**
 * TODO
 *
 * @interfaceName: FileDao
 * @author: Duojunrui
 * @date: 2019-04-16 17:16
 */

@Mapper
public interface FileDao {

    FileDO get(Long id);

    List<FileDO> list(Map<String,Object> map);

    int count(Map<String,Object> map);

    int save(FileDO file);

    int update(FileDO file);

    int remove(Long id);

    int batchRemove(Long[] ids);
}
