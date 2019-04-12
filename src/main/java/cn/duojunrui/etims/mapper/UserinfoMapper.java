package cn.duojunrui.etims.mapper;

import cn.duojunrui.etims.common.ServerResponse;
import cn.duojunrui.etims.entity.Result;
import cn.duojunrui.etims.entity.Userinfo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface UserinfoMapper {

    // 用户登录
    Userinfo userLogin(@Param("userId") String userId, @Param("password") String password);

    // 用户列表
    Userinfo listUser();

    // 用户注册
    int insertUser(Userinfo userinfo);

    // 检查账号是否存在
    int checkUserId(String userId);

    // 检查邮箱是否存在
    int checkEmail(String email);

    // 选择性更新信息
    int updateByUserIdSelective(Userinfo userinfo);

    String selectEmailByUserId(String userId);

    int updatePasswordByUserId(@Param("userId") String userId, @Param("newPassword") String newPassword);

    int checkPassword(@Param("password") String password, @Param("userId") String userId);

    int checkEmailByUserId(@Param("email") String email, @Param("userId") String userId);

    Userinfo selectByUserId(String userId);

}
