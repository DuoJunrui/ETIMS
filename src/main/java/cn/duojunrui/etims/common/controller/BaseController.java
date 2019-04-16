package cn.duojunrui.etims.common.controller;

import cn.duojunrui.etims.common.utils.ShiroUtils;
import cn.duojunrui.etims.system.domain.UserDO;
import org.springframework.stereotype.Controller;

/**
 * TODO
 *
 * @className: BaseController
 * @author: Duojunrui
 * @date: 2019-04-16 17:24
 */

@Controller
public class BaseController {
    public UserDO getUser() {
        return ShiroUtils.getUser();
    }

    public Long getUserId() {
        return getUser().getUserId();
    }

    public String getUsername() {
        return getUser().getUsername();
    }
}