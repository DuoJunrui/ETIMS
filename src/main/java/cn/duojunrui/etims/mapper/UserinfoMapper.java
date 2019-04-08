package cn.duojunrui.etims.mapper;

import cn.duojunrui.etims.entity.Result;
import cn.duojunrui.etims.entity.Userinfo;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserinfoMapper {

    // 用户列表
    Userinfo listUser();

    // 用户注册
    Integer insertUser(Userinfo userinfo);

    // 修改用户信息
    Integer updateUserinfo();

    // 修改用户密码
    Integer updateUserPassword();

    // 注销用户
    Integer deleteUser();

}
