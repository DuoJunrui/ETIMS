package cn.duojunrui.etims.service;

import cn.duojunrui.etims.common.ServerResponse;
import cn.duojunrui.etims.entity.Userinfo;

public interface UserinfoService {

    // 用户注册


    // 用户登录
    ServerResponse<Userinfo> userLogin(String userId, String password);
}
