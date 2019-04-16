package cn.duojunrui.etims.system.dao;

import cn.duojunrui.etims.system.domain.RoleMenuDO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

/**
 * 角色与菜单对应关系
 *
 * @interfaceName: RoleMenuDao
 * @author: Duojunrui
 * @date: 2019-04-16 19:47
 */

@Mapper
public interface RoleMenuDao {

    RoleMenuDO get(Long id);

    List<RoleMenuDO> list(Map<String,Object> map);

    int count(Map<String,Object> map);

    int save(RoleMenuDO roleMenu);

    int update(RoleMenuDO roleMenu);

    int remove(Long id);

    int batchRemove(Long[] ids);

    List<Long> listMenuIdByRoleId(Long roleId);

    int removeByRoleId(Long roleId);

    int removeByMenuId(Long menuId);

    int batchSave(List<RoleMenuDO> list);
}
