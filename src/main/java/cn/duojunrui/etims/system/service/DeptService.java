package cn.duojunrui.etims.system.service;

import cn.duojunrui.etims.common.domain.Tree;
import cn.duojunrui.etims.system.domain.DeptDO;

import java.util.List;
import java.util.Map;

/**
 * 部门管理
 *
 * @interfaceName: DeptService
 * @author: Duojunrui
 * @date: 2019-04-16 19:49
 */

public interface DeptService {

    DeptDO get(Long deptId);

    List<DeptDO> list(Map<String, Object> map);

    int count(Map<String, Object> map);

    int save(DeptDO sysDept);

    int update(DeptDO sysDept);

    int remove(Long deptId);

    int batchRemove(Long[] deptIds);

    Tree<DeptDO> getTree();

    boolean checkDeptHasUser(Long deptId);

    List<Long> listChildrenIds(Long parentId);
}
