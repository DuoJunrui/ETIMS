package cn.duojunrui.etims.project.module.content.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import cn.duojunrui.etims.framework.web.domain.BaseEntity;

/**
 * 实验中心网站内容表 mod_content
 *
 * @author Duojunrui
 * @date 2019-05-13
 */
public class Content extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 内容管理ID
     */
    private Integer contentId;
    /**
     * 文章标题
     */
    private String articleTitle;
    /**
     * 文章类型（1通知公告 2中心动态 3创新成果）
     */
    private String articleType;
    /**
     * 文章内容
     */
    private String articleContent;
    /**
     * 文章状态（0正常 1关闭）
     */
    private String status;

    public void setContentId(Integer contentId) {
        this.contentId = contentId;
    }

    public Integer getContentId() {
        return contentId;
    }

    public void setArticleTitle(String articleTitle) {
        this.articleTitle = articleTitle;
    }

    public String getArticleTitle() {
        return articleTitle;
    }

    public void setArticleType(String articleType) {
        this.articleType = articleType;
    }

    public String getArticleType() {
        return articleType;
    }

    public void setArticleContent(String articleContent) {
        this.articleContent = articleContent;
    }

    public String getArticleContent() {
        return articleContent;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getStatus() {
        return status;
    }

    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("contentId", getContentId())
                .append("articleTitle", getArticleTitle())
                .append("articleType", getArticleType())
                .append("articleContent", getArticleContent())
                .append("status", getStatus())
                .append("createBy", getCreateBy())
                .append("createTime", getCreateTime())
                .append("updateBy", getUpdateBy())
                .append("updateTime", getUpdateTime())
                .append("remark", getRemark())
                .toString();
    }
}
