package cn.duojunrui.etims.service;
import cn.duojunrui.etims.common.ServerResponse;
import cn.duojunrui.etims.entity.Userinfo;

/**
* @description: TODO
* @param
* @author Duojuntui
* @date 2019/4/13 23:36
*/
public interface UserinfoService {

    // 用户注册
    ServerResponse<String> userRegister(Userinfo userinfo, String emailCode);

    /**
    * 用来注册时发送邮箱验证码
    * @param userId 用户账号
    * @param userEmail 用户账号
    * @return ServerResponse
    * @date 2019/4/13 23:32
    */
    ServerResponse<String> sendRegisterEmailCode(String userId, String userEmail);

    // 用户登录
    ServerResponse<Userinfo> userLogin(String userId, String password);

    // 获取所有用户列表
    ServerResponse<Userinfo> listAllUser(Userinfo userinfo);

    // 检查用户账号和用户邮箱是否有效
    ServerResponse<String> checkValid(String str, String type);

    // 根据用户账号查询邮箱
    ServerResponse selectEmailByUserId(String userId);

    // 验证邮箱验证码
    ServerResponse<String> checkEmailCode(String userId, String userEmail, String emailCode);

    // 忘记密码
    ServerResponse<String> forgetPassword(String userId, String newPassword, String emailCodeToken);

    // 修改密码
    ServerResponse<String> resetPassword(String oldPassword, String newPassword, Userinfo userinfo);

    // 完善用户信息
    ServerResponse<Userinfo> completeInformation(Userinfo userinfo);

    // 获取用户信息
    ServerResponse<Userinfo> getUserInformation(String userId);
}
