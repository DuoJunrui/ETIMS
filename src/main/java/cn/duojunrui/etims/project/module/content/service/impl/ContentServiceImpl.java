package cn.duojunrui.etims.project.module.content.service.impl;

import java.util.List;

import cn.duojunrui.etims.common.utils.DateUtils;
import cn.duojunrui.etims.common.utils.security.ShiroUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.duojunrui.etims.project.module.content.mapper.ContentMapper;
import cn.duojunrui.etims.project.module.content.domain.Content;
import cn.duojunrui.etims.project.module.content.service.IContentService;
import cn.duojunrui.etims.common.utils.text.Convert;

import javax.annotation.Resource;

/**
 * 实验中心网站内容 服务层实现
 *
 * @author Duojunrui
 * @date 2019-05-13
 */
@Service
public class ContentServiceImpl implements IContentService {
    @Resource
    private ContentMapper contentMapper;

    /**
     * 查询实验中心网站内容信息
     *
     * @param contentId 实验中心网站内容ID
     * @return 实验中心网站内容信息
     */
    @Override
    public Content selectContentById(Integer contentId) {
        return contentMapper.selectContentById(contentId);
    }

    /**
     * 查询实验中心网站内容列表
     *
     * @param content 实验中心网站内容信息
     * @return 实验中心网站内容集合
     */
    @Override
    public List<Content> selectContentList(Content content) {
        return contentMapper.selectContentList(content);
    }

    /**
     * 新增实验中心网站内容
     *
     * @param content 实验中心网站内容信息
     * @return 结果
     */
    @Override
    public int insertContent(Content content) {
        content.setCreateBy(ShiroUtils.getUserName());
        content.setCreateTime(DateUtils.getNowDate());
        return contentMapper.insertContent(content);
    }

    /**
     * 修改实验中心网站内容
     *
     * @param content 实验中心网站内容信息
     * @return 结果
     */
    @Override
    public int updateContent(Content content) {
        content.setUpdateBy(ShiroUtils.getUserName());
        content.setUpdateTime(DateUtils.getNowDate());
        return contentMapper.updateContent(content);
    }

    /**
     * 删除实验中心网站内容对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteContentByIds(String ids) {
        return contentMapper.deleteContentByIds(Convert.toStrArray(ids));
    }

}
