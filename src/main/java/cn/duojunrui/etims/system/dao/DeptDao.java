package cn.duojunrui.etims.system.dao;

import cn.duojunrui.etims.system.domain.DeptDO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

/**
 * TODO
 *
 * @interfaceName: DeptDao
 * @author: Duojunrui
 * @date: 2019-04-16 19:46
 */

@Mapper
public interface DeptDao {

    DeptDO get(Long deptId);

    List<DeptDO> list(Map<String,Object> map);

    int count(Map<String,Object> map);

    int save(DeptDO dept);

    int update(DeptDO dept);

    int remove(Long deptId);

    int batchRemove(Long[] deptIds);

    Long[] listParentDept();

    int getDeptUserNumber(Long deptId);
}
