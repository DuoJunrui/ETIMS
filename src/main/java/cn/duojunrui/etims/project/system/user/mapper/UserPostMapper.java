package cn.duojunrui.etims.project.system.user.mapper;

import cn.duojunrui.etims.project.system.user.domain.UserPost;

import java.util.List;

/**
 * 用户与岗位 表 数据层
 *
 * @interfaceName: UserPostMapper
 * @author: Duojunrui
 * @date: 2019-04-19 21:37
 */

public interface UserPostMapper {
    /**
     * 通过用户ID删除用户和岗位关联
     *
     * @param userId 用户ID
     * @return 结果
     */
    public int deleteUserPostByUserId(Long userId);

    /**
     * 通过岗位ID查询岗位使用数量
     *
     * @param postId 岗位ID
     * @return 结果
     */
    public int countUserPostById(Long postId);

    /**
     * 批量删除用户和岗位关联
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteUserPost(Long[] ids);

    /**
     * 批量新增用户岗位信息
     *
     * @param userPostList 用户角色列表
     * @return 结果
     */
    public int batchUserPost(List<UserPost> userPostList);
}