package cn.duojunrui.etims.project.module.store.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import cn.duojunrui.etims.framework.web.domain.BaseEntity;

import java.util.Date;

/**
 * 创业园店铺表 mod_store
 *
 * @author Duojunrui
 * @date 2019-05-13
 */
public class Store extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 创业园店铺管理
     */
    private Long storeId;
    /**
     * 学生姓名
     */
    private String stuName;
    /**
     * 学生系别
     */
    private String stuDepart;
    /**
     * 学生班级
     */
    private String stuClass;
    /**
     * 学生学号
     */
    private String stuNum;
    /**
     * 店铺名称
     */
    private String shopName;
    /**
     * 店铺地址
     */
    private String shopAddress;
    /**
     * 经营范围
     */
    private String businessScope;
    /**
     * 租约开始时间
     */
    private Date rentStartTime;
    /**
     * 租约结束时间
     */
    private Date rentEndTime;
    /**
     * 指导老师
     */
    private String adviser;
    /**
     * 申请文件路径
     */
    private String filePath;
    /**
     * 申请审核状态
     */
    private Integer applyStatus;
    /**
     * 申请提交时间
     */
    private Date applyTime;
    /**
     * 申请驳回反馈
     */
    private String applyReply;
    /**
     * 删除标志（0代表存在 1代表删除）
     */
    private String delFlag;

    public void setStoreId(Long storeId) {
        this.storeId = storeId;
    }

    public Long getStoreId() {
        return storeId;
    }

    public void setStuName(String stuName) {
        this.stuName = stuName;
    }

    public String getStuName() {
        return stuName;
    }

    public void setStuDepart(String stuDepart) {
        this.stuDepart = stuDepart;
    }

    public String getStuDepart() {
        return stuDepart;
    }

    public void setStuClass(String stuClass) {
        this.stuClass = stuClass;
    }

    public String getStuClass() {
        return stuClass;
    }

    public void setStuNum(String stuNum) {
        this.stuNum = stuNum;
    }

    public String getStuNum() {
        return stuNum;
    }

    public void setShopName(String shopName) {
        this.shopName = shopName;
    }

    public String getShopName() {
        return shopName;
    }

    public void setShopAddress(String shopAddress) {
        this.shopAddress = shopAddress;
    }

    public String getShopAddress() {
        return shopAddress;
    }

    public void setBusinessScope(String businessScope) {
        this.businessScope = businessScope;
    }

    public String getBusinessScope() {
        return businessScope;
    }

    public void setRentStartTime(Date rentStartTime) {
        this.rentStartTime = rentStartTime;
    }

    public Date getRentStartTime() {
        return rentStartTime;
    }

    public void setRentEndTime(Date rentEndTime) {
        this.rentEndTime = rentEndTime;
    }

    public Date getRentEndTime() {
        return rentEndTime;
    }

    public void setAdviser(String adviser) {
        this.adviser = adviser;
    }

    public String getAdviser() {
        return adviser;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    public String getFilePath() {
        return filePath;
    }

    public void setApplyStatus(Integer applyStatus) {
        this.applyStatus = applyStatus;
    }

    public Integer getApplyStatus() {
        return applyStatus;
    }

    public void setApplyTime(Date applyTime) {
        this.applyTime = applyTime;
    }

    public Date getApplyTime() {
        return applyTime;
    }

    public void setApplyReply(String applyReply) {
        this.applyReply = applyReply;
    }

    public String getApplyReply() {
        return applyReply;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag;
    }

    public String getDelFlag() {
        return delFlag;
    }

    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("storeId", getStoreId())
                .append("stuName", getStuName())
                .append("stuDepart", getStuDepart())
                .append("stuClass", getStuClass())
                .append("stuNum", getStuNum())
                .append("shopName", getShopName())
                .append("shopAddress", getShopAddress())
                .append("businessScope", getBusinessScope())
                .append("rentStartTime", getRentStartTime())
                .append("rentEndTime", getRentEndTime())
                .append("adviser", getAdviser())
                .append("filePath", getFilePath())
                .append("applyStatus", getApplyStatus())
                .append("applyTime", getApplyTime())
                .append("applyReply", getApplyReply())
                .append("createTime", getCreateTime())
                .append("updateTime", getUpdateTime())
                .append("delFlag", getDelFlag())
                .toString();
    }
}
