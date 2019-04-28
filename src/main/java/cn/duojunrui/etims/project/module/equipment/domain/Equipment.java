package cn.duojunrui.etims.project.module.equipment.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import cn.duojunrui.etims.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 实验室设备表 mod_equipment
 *
 * @author Duojunrui
 * @date 2019-04-27
 */
public class Equipment extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 实验室设备表id
     */
    private Long equipmentId;
    /**
     * 所属实验室
     */
    private String labName;
    /**
     * 设备名称
     */
    private String equipmentName;
    /**
     * 设备数量
     */
    private Integer equipmentCount;
    /**
     * 设备用途
     */
    private String equipmentUse;
    /**
     * 入库时间
     */
    private Date inputTime;
    /**
     * 入库登记人
     */
    private String inputUser;
    /**
     * 入库备注
     */
    private String intputRemark;
    /**
     * 出库时间
     */
    private Date outputTime;
    /**
     * 出库登记人
     */
    private String outputUser;
    /**
     * 出库备注
     */
    private String outputRemark;
    /**
     * 删除标志（0代表存在 2代表删除）
     */
    private String delFlag;

    public void setEquipmentId(Long equipmentId) {
        this.equipmentId = equipmentId;
    }

    public Long getEquipmentId() {
        return equipmentId;
    }

    public void setLabName(String labName) {
        this.labName = labName;
    }

    public String getLabName() {
        return labName;
    }

    public void setEquipmentName(String equipmentName) {
        this.equipmentName = equipmentName;
    }

    public String getEquipmentName() {
        return equipmentName;
    }

    public void setEquipmentCount(Integer equipmentCount) {
        this.equipmentCount = equipmentCount;
    }

    public Integer getEquipmentCount() {
        return equipmentCount;
    }

    public void setEquipmentUse(String equipmentUse) {
        this.equipmentUse = equipmentUse;
    }

    public String getEquipmentUse() {
        return equipmentUse;
    }

    public void setInputTime(Date inputTime) {
        this.inputTime = inputTime;
    }

    public Date getInputTime() {
        return inputTime;
    }

    public void setInputUser(String inputUser) {
        this.inputUser = inputUser;
    }

    public String getInputUser() {
        return inputUser;
    }

    public void setIntputRemark(String intputRemark) {
        this.intputRemark = intputRemark;
    }

    public String getIntputRemark() {
        return intputRemark;
    }

    public void setOutputTime(Date outputTime) {
        this.outputTime = outputTime;
    }

    public Date getOutputTime() {
        return outputTime;
    }

    public void setOutputUser(String outputUser) {
        this.outputUser = outputUser;
    }

    public String getOutputUser() {
        return outputUser;
    }

    public void setOutputRemark(String outputRemark) {
        this.outputRemark = outputRemark;
    }

    public String getOutputRemark() {
        return outputRemark;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag;
    }

    public String getDelFlag() {
        return delFlag;
    }

    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("equipmentId", getEquipmentId())
                .append("labName", getLabName())
                .append("equipmentName", getEquipmentName())
                .append("equipmentCount", getEquipmentCount())
                .append("equipmentUse", getEquipmentUse())
                .append("inputTime", getInputTime())
                .append("inputUser", getInputUser())
                .append("intputRemark", getIntputRemark())
                .append("outputTime", getOutputTime())
                .append("outputUser", getOutputUser())
                .append("outputRemark", getOutputRemark())
                .append("createTime", getCreateTime())
                .append("updateTime", getUpdateTime())
                .append("delFlag", getDelFlag())
                .toString();
    }
}
