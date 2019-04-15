package cn.duojunrui.etims.service;
import cn.duojunrui.etims.common.ServerResponse;
import cn.duojunrui.etims.entity.Userinfo;

import java.util.List;
import java.util.Map;

/**
 * 用户管理Service层接口
 * @interfaceName: UserinfoService
 * @author: Duojunrui
 * @date: 2019-04-14 12:08
 */
public interface UserinfoService {

    /**
    * 用户注册
    * @param userinfo
    * @param emailCode
    * @return ServerResponse<String>
    * @date 2019/4/14 11:55
    */
    ServerResponse<String> userRegister(Userinfo userinfo, String emailCode);

    /**
    * 用来注册时发送邮箱验证码
    * @param userId
    * @param userEmail
    * @return ServerResponse<String>
    * @date 2019/4/13 23:32
    */
    ServerResponse<String> sendRegisterEmailCode(String userId, String userEmail);

    /**
    * 用户登录
    * @param userId
    * @param password
    * @return ServerResponse<Userinfo>
    * @date 2019/4/14 11:52
    */
    ServerResponse<Userinfo> userLogin(String userId, String password);

    /**
    * 获取所有用户列表
    * @return List<Userinfo>
    * @date 2019/4/14 12:01
    */
    List<Userinfo> listAllUser(Map<String, Object> map);

    /**
    * 检查用户账号和用户邮箱是否有效
    * @param str
    * @param type
    * @return ServerResponse<String>
    * @date 2019/4/14 12:02
    */
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
