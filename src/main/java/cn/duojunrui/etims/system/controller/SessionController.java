package cn.duojunrui.etims.system.controller;

import cn.duojunrui.etims.common.utils.ResultUtils;
import cn.duojunrui.etims.system.domain.UserOnline;
import cn.duojunrui.etims.system.service.SessionService;
import org.apache.shiro.session.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.Collection;
import java.util.List;

/**
 * TODO
 *
 * @className: SessionController
 * @author: Duojunrui
 * @date: 2019-04-16 19:58
 */

@RequestMapping("/sys/online")
@Controller
public class SessionController {
    @Autowired
    SessionService sessionService;

    @GetMapping()
    public String online() {
        return "system/online/online";
    }

    @ResponseBody
    @RequestMapping("/list")
    public List<UserOnline> list() {
        return sessionService.list();
    }

    @ResponseBody
    @RequestMapping("/forceLogout/{sessionId}")
    public ResultUtils forceLogout(@PathVariable("sessionId") String sessionId, RedirectAttributes redirectAttributes) {
        try {
            sessionService.forceLogout(sessionId);
            return ResultUtils.ok();
        } catch (Exception e) {
            e.printStackTrace();
            return ResultUtils.error();
        }

    }

    @ResponseBody
    @RequestMapping("/sessionList")
    public Collection<Session> sessionList() {
        return sessionService.sessionList();
    }


}
