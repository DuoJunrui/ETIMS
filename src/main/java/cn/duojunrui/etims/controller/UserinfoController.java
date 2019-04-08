package cn.duojunrui.etims.controller;

import cn.duojunrui.etims.entity.Result;
import cn.duojunrui.etims.entity.Userinfo;
import cn.duojunrui.etims.enums.ResultEnum;
import cn.duojunrui.etims.service.UserinfoService;
import cn.duojunrui.etims.utils.ResultUtil;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
@RequestMapping("/user")
public class UserinfoController {

    @Resource
    private UserinfoService us;

    // 用户注册
    /**
     * @param userinfo
     * @return 注册成功返回用户账号
     */
    @PostMapping
    public Result insertUser(Userinfo userinfo) {
        if (userinfo.getUserId()==null || "".equals(userinfo.getUserId()) ||
                userinfo.getPassword()==null || "".equals(userinfo.getPassword())) {
            return ResultUtil.error(ResultEnum.DATA_NOT_NULL);
        }

        return ResultUtil.success(us.insertUser(userinfo));
    }

    // 查询所有用户
    @GetMapping
    public Result listUser() {
        return ResultUtil.success(us.listUser());
    }
}
