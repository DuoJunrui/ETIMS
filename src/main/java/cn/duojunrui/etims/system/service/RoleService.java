package cn.duojunrui.etims.system.service;

import cn.duojunrui.etims.system.domain.RoleDO;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * TODO
 *
 * @interfaceName: RoleService
 * @author: Duojunrui
 * @date: 2019-04-16 19:51
 */
@Service
public interface RoleService {

    RoleDO get(Long id);

    List<RoleDO> list();

    int save(RoleDO role);

    int update(RoleDO role);

    int remove(Long id);

    List<RoleDO> list(Long userId);

    int batchremove(Long[] ids);
}
