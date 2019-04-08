package cn.duojunrui.etims.service;

import cn.duojunrui.etims.entity.Userinfo;
import cn.duojunrui.etims.mapper.UserinfoMapper;
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

    // 查询所有用户
    public Userinfo listUser() {
        return um.listUser();
    }

}
