package cn.duojunrui.etims.system.dao;

import cn.duojunrui.etims.system.domain.RoleDO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

/**
 * 角色
 *
 * @interfaceName: RoleDao
 * @author: Duojunrui
 * @date: 2019-04-16 19:47
 */
@Mapper
public interface RoleDao {

    RoleDO get(Long roleId);

    List<RoleDO> list(Map<String,Object> map);

    int count(Map<String,Object> map);

    int save(RoleDO role);

    int update(RoleDO role);

    int remove(Long roleId);

    int batchRemove(Long[] roleIds);
}
