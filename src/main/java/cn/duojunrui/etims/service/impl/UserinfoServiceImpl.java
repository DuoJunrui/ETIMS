package cn.duojunrui.etims.service.impl;

import cn.duojunrui.etims.common.ServerResponse;
import cn.duojunrui.etims.entity.Result;
import cn.duojunrui.etims.entity.Userinfo;
import cn.duojunrui.etims.enums.ResultEnum;
import cn.duojunrui.etims.mapper.UserinfoMapper;
import cn.duojunrui.etims.service.UserinfoService;
import cn.duojunrui.etims.utils.ResultUtil;
import cn.duojunrui.etims.utils.UUIDUtil;
import com.alibaba.druid.util.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;

@Service
public class UserinfoServiceImpl implements UserinfoService {

    @Resource
    private UserinfoMapper userinfoMapper;

    // 用户登录
    @Override
    public ServerResponse<Userinfo> userLogin(String userId, String password) {
        int resultCount = userinfoMapper.checkUserId(userId);
        if (resultCount == 0) {
            return ServerResponse.createByErrorMessage("用户账号不存在");
        }

        //TODO 密码登录 MD5
        Userinfo userinfo = userinfoMapper.userLogin(userId, password);
        if (userinfo == null) {
            return ServerResponse.createByErrorMessage("密码错误");
        }

        userinfo.setPassword(org.apache.commons.lang3.StringUtils.EMPTY);
        return ServerResponse.createBySuccess("登录成功", userinfo);
    }

    // 用户注册
    public ServerResponse<String> userRegister(Userinfo userinfo) {
        userinfo.setId(UUIDUtil.getUUID32());
        userinfo.setCheckStatus(0);
        userinfo.setCreateTime(new Date().getTime());
        userinfo.setIsDeleted(0);
        return userinfoMapper.insertUser(userinfo);
    }

    // 查询所有用户
    public Userinfo listUser() {
        return userinfoMapper.listUser();
    }


}
