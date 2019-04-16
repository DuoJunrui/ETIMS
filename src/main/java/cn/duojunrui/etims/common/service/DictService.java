package cn.duojunrui.etims.common.service;

import cn.duojunrui.etims.common.domain.DictDO;
import cn.duojunrui.etims.system.domain.UserDO;

import java.util.List;
import java.util.Map;

/**
 * TODO
 *
 * @interfaceName: DictService
 * @author: Duojunrui
 * @date: 2019-04-16 17:18
 */

public interface DictService {

    DictDO get(Long id);

    List<DictDO> list(Map<String, Object> map);

    int count(Map<String, Object> map);

    int save(DictDO dict);

    int update(DictDO dict);

    int remove(Long id);

    int batchRemove(Long[] ids);

    List<DictDO> listType();

    String getName(String type,String value);

    /**
     * 获取爱好列表
     * @return
     * @param userDO
     */
    List<DictDO> getHobbyList(UserDO userDO);

    /**
     * 获取性别列表
     * @return
     */
    List<DictDO> getSexList();

    /**
     * 根据type获取数据
     * @param map
     * @return
     */
    List<DictDO> listByType(String type);

}
