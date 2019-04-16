package cn.duojunrui.etims.system.dao;

import cn.duojunrui.etims.system.domain.UserDO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

/**
 * TODO
 *
 * @interfaceName: UserDao
 * @author: Duojunrui
 * @date: 2019-04-16 19:48
 */

@Mapper
public interface UserDao {

    UserDO get(Long userId);

    List<UserDO> list(Map<String,Object> map);

    int count(Map<String,Object> map);

    int save(UserDO user);

    int update(UserDO user);

    int remove(Long userId);

    int batchRemove(Long[] userIds);

    Long[] listAllDept();

}
