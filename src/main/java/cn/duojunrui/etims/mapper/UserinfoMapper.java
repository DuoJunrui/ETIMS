package cn.duojunrui.etims.mapper;

import cn.duojunrui.etims.entity.Result;
import cn.duojunrui.etims.entity.Userinfo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface UserinfoMapper {

    // 用户列表
    Userinfo listUser();

    // 用户注册
    int insertUser(Userinfo userinfo);

    // 用户登录
    Userinfo userLogin(@Param("user_id") String userId, @Param("password") String password);

    // 检查用户是否存在
    int checkUserId(String userId);

    // 修改用户信息
    Integer updateUserinfo();

    // 修改用户密码
    Integer updateUserPassword();

    // 注销用户
    Integer deleteUser();

}
