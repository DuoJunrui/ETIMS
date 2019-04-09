package cn.duojunrui.etims.service;

import cn.duojunrui.etims.entity.Result;
import cn.duojunrui.etims.entity.Userinfo;
import cn.duojunrui.etims.enums.ResultEnum;
import cn.duojunrui.etims.mapper.UserinfoMapper;
import cn.duojunrui.etims.utils.ResultUtil;
import cn.duojunrui.etims.utils.UUIDUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;

@Service
public class UserinfoService {

    @Resource
    private UserinfoMapper um;

    // 用户注册
    public Integer insertUser(Userinfo userinfo) {
        userinfo.setId(UUIDUtil.getUUID32());
        userinfo.setCheckStatus(0);
        userinfo.setCreateTime(new Date().getTime());
        userinfo.setIsDeleted(0);
        return um.insertUser(userinfo);
    }

    // 用户登录
    public Result userLogin(Userinfo userinfo) {
        // 判断用户名和密码是否正确
        if (userinfo.getUserId()!=um.userLogin(userinfo).getUserId() ||
                userinfo.getPassword()==null || "".equals(userinfo.getPassword())) {
            return ResultUtil.error(ResultEnum.DATA_NOT_NULL);
        }
        return ResultUtil.success();
    }

    // 查询所有用户
    public Userinfo listUser() {
        return um.listUser();
    }

}
