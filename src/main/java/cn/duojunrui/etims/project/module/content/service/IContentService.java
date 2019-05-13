package cn.duojunrui.etims.project.module.content.service;

import cn.duojunrui.etims.project.module.content.domain.Content;

import java.util.List;

/**
 * 实验中心网站内容 服务层
 *
 * @author Duojunrui
 * @date 2019-05-13
 */
public interface IContentService {
    /**
     * 查询实验中心网站内容信息
     *
     * @param contentId 实验中心网站内容ID
     * @return 实验中心网站内容信息
     */
    public Content selectContentById(Integer contentId);

    /**
     * 查询实验中心网站内容列表
     *
     * @param content 实验中心网站内容信息
     * @return 实验中心网站内容集合
     */
    public List<Content> selectContentList(Content content);

    /**
     * 新增实验中心网站内容
     *
     * @param content 实验中心网站内容信息
     * @return 结果
     */
    public int insertContent(Content content);

    /**
     * 修改实验中心网站内容
     *
     * @param content 实验中心网站内容信息
     * @return 结果
     */
    public int updateContent(Content content);

    /**
     * 删除实验中心网站内容信息
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteContentByIds(String ids);

}
