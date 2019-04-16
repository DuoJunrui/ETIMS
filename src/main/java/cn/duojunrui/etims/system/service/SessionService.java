package cn.duojunrui.etims.system.service;

import cn.duojunrui.etims.system.domain.UserDO;
import cn.duojunrui.etims.system.domain.UserOnline;
import org.apache.shiro.session.Session;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.List;

/**
 * TODO
 *
 * @interfaceName: SessionService
 * @author: Duojunrui
 * @date: 2019-04-16 19:52
 */
@Service
public interface SessionService {
    List<UserOnline> list();

    List<UserDO> listOnlineUser();

    Collection<Session> sessionList();

    boolean forceLogout(String sessionId);
}
