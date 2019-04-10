package cn.duojunrui.etims.controller;

import cn.duojunrui.etims.common.Constant;
import cn.duojunrui.etims.common.ServerResponse;
import cn.duojunrui.etims.entity.Result;
import cn.duojunrui.etims.entity.Userinfo;
import cn.duojunrui.etims.enums.ResultEnum;
import cn.duojunrui.etims.service.UserinfoService;
import cn.duojunrui.etims.utils.ResultUtil;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@RestController
@RequestMapping("/user")
public class UserinfoController {

    @Resource
    private UserinfoService userinfoService;

    // 用户注册
    @PostMapping
    public ServerResponse<String> userRegister(Userinfo userinfo) {
        if (userinfo.getUserId()==null || "".equals(userinfo.getUserId()) ||
                userinfo.getPassword()==null || "".equals(userinfo.getPassword()) ||
                userinfo.getUserEmail()==null || "".equals(userinfo.getUserEmail()) ||
                userinfo.getUserRole()==null || "".equals(userinfo.getUserRole()) ) {
            return ResultUtil.error(ResultEnum.DATA_NOT_NULL);
        }
        return null;
    }

    // 用户登录
    @PostMapping("/login")
    public ServerResponse<Userinfo> userLogin(String userId, String password, HttpSession session) {
        // 判断用户名和密码是否为空
        ServerResponse<Userinfo> response = userinfoService.userLogin(userId, password);
        if (response.isSuccess()) {
            session.setAttribute(Constant.CURRENT_USER, response.getData());
        }
        return response;
    }

    // 用户登出 移除session
    @GetMapping("/logout")
    public ServerResponse<String> logout(HttpSession session) {
        session.removeAttribute(Constant.CURRENT_USER);
        return ServerResponse.createBySuccess();
    }

    // 查询所有用户
    @GetMapping
    public Result listUser() {
        return null;
    }
}
