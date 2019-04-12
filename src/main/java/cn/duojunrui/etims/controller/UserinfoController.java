package cn.duojunrui.etims.controller;
import cn.duojunrui.etims.common.Constant;
import cn.duojunrui.etims.common.ResponseCode;
import cn.duojunrui.etims.common.ServerResponse;
import cn.duojunrui.etims.entity.Userinfo;
import cn.duojunrui.etims.service.UserinfoService;
import org.springframework.web.bind.annotation.*;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@RestController
@RequestMapping("/user")
public class UserinfoController {

    @Resource
    private UserinfoService userinfoService;

    // 用户注册
    @PostMapping("/register")
    public ServerResponse<String> userRegister(Userinfo userinfo) {
        return userinfoService.userRegister(userinfo);
    }

    // 所有用户列表
    @GetMapping("/userList")
    public ServerResponse<Userinfo> listAllUser(Userinfo userinfo) {
        return userinfoService.listAllUser(userinfo);
    }

    // 检查用户账号和用户邮箱是否有效
    @PostMapping("/checkValid")
    public ServerResponse<String> checkValid(String str, String type) {
        return userinfoService.checkValid(str, type);
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

    // 获取用户登录信息
    @GetMapping("/getUserSession")
    public ServerResponse<Userinfo> getUserSession(HttpSession session) {
        Userinfo userinfo = (Userinfo) session.getAttribute(Constant.CURRENT_USER);
        if (userinfo != null) {
            return ServerResponse.createBySuccess(userinfo);
        }
        return ServerResponse.createByErrorMessage("用户未登录，无法获取当前用户的信息");
    }

    // 获取用户邮箱
    @GetMapping("/getEamil")
    public ServerResponse<String> getEmailByUserId(String userId) {
        return userinfoService.selectEmailByUserId(userId);
    }

    // 验证邮箱验证码是否正确
    @PostMapping("/checkEmailCode")
    public ServerResponse<String> checkEmailCode(String userId, String userEmail, String emailCode){
        return userinfoService.checkEmailCode(userId, userEmail, emailCode);
    }

    // 忘记密码
    @PostMapping("/forgetPassword")
    public ServerResponse<String> forgetPassword(String userId, String newPassword, String emailCodeToken) {
        return userinfoService.forgetPassword(userId, newPassword, emailCodeToken);
    }

    // 修改密码
    @PostMapping("/resetPassword")
    public ServerResponse<String> resetPassword(HttpSession session, String oldPassword, String newPassword) {
        Userinfo userinfo = (Userinfo) session.getAttribute(Constant.CURRENT_USER);
        if (userinfo == null) {
            return ServerResponse.createByErrorMessage("用户未登录");
        }
        return userinfoService.resetPassword(oldPassword, newPassword, userinfo);
    }

    // 完善用户信息
    @PostMapping("/completeInformation")
    public ServerResponse<Userinfo> completeInformation(HttpSession session, Userinfo userinfo) {
        Userinfo currentUser = (Userinfo) session.getAttribute(Constant.CURRENT_USER);
        if (currentUser == null) {
            return ServerResponse.createByErrorMessage("用户未登录");
        }
        userinfo.setId(currentUser.getId());
        userinfo.setUserId(currentUser.getUserId());
        ServerResponse<Userinfo> response = userinfoService.completeInformation(userinfo);
        if (response.isSuccess()) {
            session.setAttribute(Constant.CURRENT_USER, response.getData());
        }
        return response;
    }

    // 获取用户详细信息
    @PostMapping("/getUserInformation")
    public ServerResponse<Userinfo> getUserInformation(HttpSession session) {
        Userinfo currentUser = (Userinfo) session.getAttribute(Constant.CURRENT_USER);
        if (currentUser == null) {
            return ServerResponse.createByErrorCodeMessage(ResponseCode.NEED_LOGIN.getCode(), "用户未登录，需要强制登录");
        }
        return userinfoService.getUserInformation(currentUser.getUserId());
    }

    // 用户登出 移除session
    @GetMapping("/logout")
    public ServerResponse<String> logout(HttpSession session) {
        session.removeAttribute(Constant.CURRENT_USER);
        return ServerResponse.createBySuccess();
    }

}
