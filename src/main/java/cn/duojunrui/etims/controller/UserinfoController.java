package cn.duojunrui.etims.controller;

import cn.duojunrui.etims.entity.Result;
import cn.duojunrui.etims.entity.Userinfo;
import cn.duojunrui.etims.enums.ResultEnum;
import cn.duojunrui.etims.service.UserinfoService;
import cn.duojunrui.etims.utils.ResultUtil;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

@RestController
@RequestMapping
public class UserinfoController {

    @Resource
    private UserinfoService us;

    // 用户注册
    @PostMapping("/user")
    public Result insertUser(Userinfo userinfo) {
        if (userinfo.getUserId()==null || "".equals(userinfo.getUserId()) ||
                userinfo.getPassword()==null || "".equals(userinfo.getPassword()) ||
                userinfo.getUserEmail()==null || "".equals(userinfo.getUserEmail()) ||
                userinfo.getUserRole()==null || "".equals(userinfo.getUserRole()) ) {
            return ResultUtil.error(ResultEnum.DATA_NOT_NULL);
        }
        return ResultUtil.success(us.insertUser(userinfo));
    }

    // 用户登录
    @PostMapping("/login")
    public Result userLogin(Userinfo userinfo) {
        // 判断用户名和密码是否为空
        if (userinfo.getUserId()==null || "".equals(userinfo.getUserId()) ||
                userinfo.getPassword()==null || "".equals(userinfo.getPassword())) {
            return ResultUtil.error(ResultEnum.DATA_NOT_NULL);
        }
        return us.userLogin(userinfo);
    }

    // 查询所有用户
    @GetMapping("/user")
    public Result listUser() {
        return ResultUtil.success(us.listUser());
    }
}
