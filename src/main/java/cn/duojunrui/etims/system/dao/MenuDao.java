package cn.duojunrui.etims.system.dao;

import cn.duojunrui.etims.system.domain.MenuDO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

/**
 * TODO
 *
 * @interfaceName: MenuDao
 * @author: Duojunrui
 * @date: 2019-04-16 19:46
 */

@Mapper
public interface MenuDao {

    MenuDO get(Long menuId);

    List<MenuDO> list(Map<String,Object> map);

    int count(Map<String,Object> map);

    int save(MenuDO menu);

    int update(MenuDO menu);

    int remove(Long menuId);

    int batchRemove(Long[] menuIds);

    List<MenuDO> listMenuByUserId(Long id);

    List<String> listUserPerms(Long id);
}
