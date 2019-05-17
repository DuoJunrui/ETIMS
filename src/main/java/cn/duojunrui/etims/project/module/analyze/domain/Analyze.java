package cn.duojunrui.etims.project.module.analyze.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import cn.duojunrui.etims.framework.web.domain.BaseEntity;

/**
 * 统计分析表 mod_analyze
 *
 * @author Duojunrui
 * @date 2019-05-17
 */
public class Analyze extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 统计分析管理ID
     */
    private Integer analyzeId;
    /**
     * 统计分析标题
     */
    private String analyzeTitle;
    /**
     * 统计分析类型
     */
    private String analyzeType;
    /**
     * 统计分析内容
     */
    private String analyzeContent;
    /**
     * 统计分析状态（0正常 1关闭）
     */
    private String status;

    public void setAnalyzeId(Integer analyzeId) {
        this.analyzeId = analyzeId;
    }

    public Integer getAnalyzeId() {
        return analyzeId;
    }

    public void setAnalyzeTitle(String analyzeTitle) {
        this.analyzeTitle = analyzeTitle;
    }

    public String getAnalyzeTitle() {
        return analyzeTitle;
    }

    public void setAnalyzeType(String analyzeType) {
        this.analyzeType = analyzeType;
    }

    public String getAnalyzeType() {
        return analyzeType;
    }

    public void setAnalyzeContent(String analyzeContent) {
        this.analyzeContent = analyzeContent;
    }

    public String getAnalyzeContent() {
        return analyzeContent;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getStatus() {
        return status;
    }

    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("analyzeId", getAnalyzeId())
                .append("analyzeTitle", getAnalyzeTitle())
                .append("analyzeType", getAnalyzeType())
                .append("analyzeContent", getAnalyzeContent())
                .append("status", getStatus())
                .append("createBy", getCreateBy())
                .append("createTime", getCreateTime())
                .append("updateBy", getUpdateBy())
                .append("updateTime", getUpdateTime())
                .append("remark", getRemark())
                .toString();
    }
}
