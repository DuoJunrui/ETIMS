package cn.duojunrui.etims.service;

import cn.duojunrui.etims.common.ServerResponse;
import cn.duojunrui.etims.entity.Userinfo;

public interface UserinfoService {

    // 用户注册
    ServerResponse<String> userRegister(Userinfo userinfo);

    // 用户登录
    ServerResponse<Userinfo> userLogin(String userId, String password);

    // 检查用户账号和用户邮箱是否有效
    ServerResponse<String> checkValid(String str, String type);

    // 根据用户账号查询邮箱
    ServerResponse selectEmail(String userId);

    // 验证邮箱验证码
    ServerResponse<String> checkEmailCode(String userId, String userEmail, String emailCode);

    ServerResponse<String> forgetPassword(String userId, String newPassword, String emailCodeToken);

    ServerResponse<String> resetPassword(String oldPassword, String newPassword, Userinfo userinfo);
}
