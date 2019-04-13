package cn.duojunrui.etims.service.impl;

import cn.duojunrui.etims.common.Constant;
import cn.duojunrui.etims.common.ServerResponse;
import cn.duojunrui.etims.common.TokenCache;
import cn.duojunrui.etims.controller.MailController;
import cn.duojunrui.etims.entity.Userinfo;
import cn.duojunrui.etims.mapper.UserinfoMapper;
import cn.duojunrui.etims.service.UserinfoService;
import cn.duojunrui.etims.utils.Md5Util;
import cn.duojunrui.etims.utils.UUIDUtil;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;

/**
* @description: TODO
* @param
* @author Duojunrui
* @date 2019/4/13 23:48
*/
@Service
public class UserinfoServiceImpl implements UserinfoService {

    @Resource
    private UserinfoMapper userinfoMapper;

    @Resource
    private MailController mailController;

    // 用户登录
    @Override
    public ServerResponse<Userinfo> userLogin(String userId, String password) {
        int resultCount = userinfoMapper.checkUserId(userId);
        if (resultCount == 0) {
            return ServerResponse.createByErrorMessage("用户账号不存在");
        }

        //TODO 密码登录 MD5
        String md5Password = Md5Util.md5EncodeUtf8(password);
        Userinfo userinfo = userinfoMapper.userLogin(userId, md5Password);
        if (userinfo == null) {
            return ServerResponse.createByErrorMessage("密码错误");
        }

        userinfo.setPassword(org.apache.commons.lang3.StringUtils.EMPTY);
        return ServerResponse.createBySuccess("登录成功", userinfo);
        //return JSON.toJSONString(ServerResponse);
    }

    // 获取所有用户列表
    @Override
    public ServerResponse<Userinfo> listAllUser(Userinfo userinfo){
        return ServerResponse.createBySuccess(userinfo);
    }

    // 发送注册验证邮箱验证码
    String sendEmailCode = null;
    @Override
    public ServerResponse<String> sendRegisterEmailCode(String userId, String userEmail) {

        // 校验用户账号
        ServerResponse validResponse = this.checkValid(userId, Constant.USERID);
        if (!validResponse.isSuccess()) {
            return validResponse;
        }

        // 校验用户邮箱
        validResponse = this.checkValid(userEmail, Constant.USEREMAIL);
        if (!validResponse.isSuccess()) {
            return validResponse;
        }

        sendEmailCode = mailController.sendEmailCode(userEmail);

        return ServerResponse.createBySuccess("邮件发送成功",sendEmailCode);
    }

    // 校验用户邮箱验证码
    @Override
    public ServerResponse<String> checkEmailCode(String userId, String userEmail, String emailCode) {
        if ( sendEmailCode.equals(emailCode)) {
//            String emailCodeToken = UUID.randomUUID().toString();
//            TokenCache.setKey(TokenCache.TOKEN_PREFIX+userId, emailCodeToken);
            return ServerResponse.createBySuccess("邮箱验证成功");
        }
        return ServerResponse.createByErrorMessage("邮箱验证码错误或者已失效");
    }

    // 用户注册
    @Override
    public ServerResponse<String> userRegister(Userinfo userinfo, String emailCode) {

        userinfo.setId(UUIDUtil.getUUID32());

        // 校验用户账号
        ServerResponse validResponse = this.checkValid(userinfo.getUserId(), Constant.USERID);
        if (!validResponse.isSuccess()) {
            return validResponse;
        }

        // 用户密码 MD5加密
        userinfo.setPassword(Md5Util.md5EncodeUtf8(userinfo.getPassword()));

        // 用户角色
        int value = userinfo.getUserRole();
        if (value == 0) {
            userinfo.setUserRole(Constant.userRole.ROLE_SUPER_ADMIN);
        } else if (value == 1) {
            userinfo.setUserRole(Constant.userRole.ROLE_ADMIN);
        } else if (value == 2) {
            userinfo.setUserRole(Constant.userRole.ROLE_STAFF);
        } else {
            userinfo.setUserRole(Constant.userRole.ROLE_STUDENT);
        }

        // 校验用户邮箱
        validResponse = this.checkValid(userinfo.getUserEmail(), Constant.USEREMAIL);
        if (!validResponse.isSuccess()) {
            return validResponse;
        }

        // 校验用户邮箱验证码
        validResponse =this.checkEmailCode(userinfo.getUserId(), userinfo.getUserEmail(), emailCode);
        if (!validResponse.isSuccess()) {
            return validResponse;
        }

        userinfo.setCheckStatus(Constant.checkStatus.CHECK_SUPPLEMENT);

        userinfo.setCreateTime(System.currentTimeMillis());
        userinfo.setIsDeleted(Constant.isDeleted.NOT_DELETED);

        int resultCount = userinfoMapper.insertUser(userinfo);
        if (resultCount == 0) {
            return ServerResponse.createByErrorMessage("注册失败");
        }
        return ServerResponse.createBySuccessMessage("注册成功");

    }

    // 检查用户账号和用户邮箱是否有效
    @Override
    public ServerResponse<String> checkValid(String str, String type) {
        if (StringUtils.isNotBlank(type)) {
            // 开始校验
            if (Constant.USERID.equals(type)) {
                int resultCount = userinfoMapper.checkUserId(str);
                if (resultCount > 0) {
                    return ServerResponse.createByErrorMessage("该账号已存在");
                }
            }
            if (Constant.USEREMAIL.equals(type)) {
                int resultCount = userinfoMapper.checkEmail(str);
                    if (resultCount > 0) {
                        return ServerResponse.createByErrorMessage("该邮箱已存在");
                }
            }
        } else {
            return ServerResponse.createByErrorMessage("参数错误");
        }
        return ServerResponse.createBySuccessMessage("校验成功");
    }

    @Override
    public ServerResponse selectEmailByUserId(String userId) {
        ServerResponse validResponse = this.checkValid(userId, Constant.USERID);
        if (validResponse.isSuccess()) {
            // 用户不存在
            return ServerResponse.createByErrorMessage("用户不存在");
        }
        String email = userinfoMapper.selectEmailByUserId(userId);
        if (StringUtils.isNotBlank(email)) {
            return ServerResponse.createBySuccess(email);
        }
        return ServerResponse.createByErrorMessage("用户未绑定邮箱");
    }

    @Override
    public ServerResponse<String> forgetPassword(String userId, String newPassword, String emailCodeToken) {
        if (StringUtils.isBlank(emailCodeToken)) {
            return ServerResponse.createByErrorMessage("参数错误，token需要传递");
        }

        ServerResponse vaildResponse = this.checkValid(userId, Constant.CURRENT_USER);
        if (vaildResponse.isSuccess()) {
            return ServerResponse.createByErrorMessage("用户不存在");
        }

        String token = TokenCache.getKey(TokenCache.TOKEN_PREFIX+userId);
        if (StringUtils.isBlank(token)) {
            return ServerResponse.createByErrorMessage("token无效或者过期");
        }

        if (StringUtils.equals(emailCodeToken,token)) {
            String md5Password = Md5Util.md5EncodeUtf8(newPassword);
            int rowCount = userinfoMapper.updatePasswordByUserId(userId,md5Password);
            if (rowCount>0) {
                return ServerResponse.createBySuccess("密码重置成功");
            }
        } else {
            return ServerResponse.createByErrorMessage("token错误，请重新获取重置密码的token");
        }
        return ServerResponse.createByErrorMessage("密码重置失败");
    }

    @Override
    public ServerResponse<String> resetPassword(String oldPassword, String newPassword, Userinfo userinfo) {

        // 防止横向越权，要验证一下这个用户的旧密码，一定要指定是这个用户，
        // 因为我们会查询一个count(1)，如果不指定ID，那么结果就是true了，count>0
        int resultCount = userinfoMapper.checkPassword(Md5Util.md5EncodeUtf8(oldPassword), userinfo.getUserId());
        if (resultCount ==0) {
            return ServerResponse.createByErrorMessage("旧密码错误");
        }

        userinfo.setPassword(Md5Util.md5EncodeUtf8(newPassword));
        int updateCount = userinfoMapper.updateByUserIdSelective(userinfo);
        if (updateCount > 0) {
            return ServerResponse.createBySuccessMessage("密码修改成功");
        }
        return ServerResponse.createByErrorMessage("密码修改失败");
    }

    // 完善用户信息
    @Override
    public ServerResponse<Userinfo> completeInformation(Userinfo userinfo) {
        //userId是不能被更新的
        //email也要进行一个校验，校验新的email是不是已经存在，并且存在的email如果相同的话，不能是我们当前的这个用户的邮箱
        int resultCount = userinfoMapper.checkEmailByUserId(userinfo.getUserEmail(), userinfo.getUserId());
        if (resultCount > 0) {
            return ServerResponse.createByErrorMessage("该邮箱已存在，请更换其他邮箱");
        }

        Userinfo updateUser = new Userinfo();
        updateUser.setUserName(userinfo.getUserName());
        updateUser.setUserSex(userinfo.getUserSex());
        updateUser.setPhotoMap(userinfo.getPhotoMap());
        updateUser.setUserTel(userinfo.getUserTel());
        updateUser.setUserEmail(userinfo.getUserEmail());
        updateUser.setCheckStatus(Constant.checkStatus.CHECK_CHECHING);

        if (userinfo.getUserRole() != Constant.userRole.ROLE_STUDENT) {
            updateUser.setStaffId(userinfo.getStaffId());
            updateUser.setStaffPart(userinfo.getStaffPart());
        } else {
            updateUser.setStudentGrade(userinfo.getStudentGrade());
            updateUser.setStudentClass(userinfo.getStudentClass());
            updateUser.setStudentId(userinfo.getStudentId());
            updateUser.setStudentMajor(userinfo.getStudentMajor());
        }

        updateUser.setUpdateTime(System.currentTimeMillis());

        int updateCount = userinfoMapper.updateByUserIdSelective(updateUser);
        if (updateCount > 0) {
            return ServerResponse.createBySuccess("完善个人信息成功",updateUser);
        }
        return ServerResponse.createByErrorMessage("完善个人信息失败");
    }

    @Override
    public ServerResponse<Userinfo> getUserInformation(String userId) {
        Userinfo userinfo = userinfoMapper.selectByUserId(userId);
        if (userinfo == null) {
            return ServerResponse.createByErrorMessage("找不到当前用户");
        }
        userinfo.setPassword(StringUtils.EMPTY);
        return ServerResponse.createBySuccess(userinfo);

    }

    // 更新用户次要信息
    public ServerResponse<Userinfo> updateInformation(Userinfo userinfo) {

        //userId是不能被更新的
    return null;
    }

}
