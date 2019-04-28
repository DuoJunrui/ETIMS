package cn.duojunrui.etims.project.module.equipment.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import cn.duojunrui.etims.framework.web.domain.BaseEntity;

import java.util.Date;

/**
 * 实验室设备表 mod_equipment
 *
 * @author Duojunrui
 * @date 2019-04-28
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
     * 操作状态（0入库，1出库）
     */
    private String operateStatus;
    /**
     * 出入库时间
     */
    private Date operateTime;
    /**
     * 登记人
     */
    private String register;
    /**
     * 删除标志（0代表存在 1代表删除）
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

    public void setOperateStatus(String operateStatus) {
        this.operateStatus = operateStatus;
    }

    public String getOperateStatus() {
        return operateStatus;
    }

    public void setOperateTime(Date operateTime) {
        this.operateTime = operateTime;
    }

    public Date getOperateTime() {
        return operateTime;
    }

    public void setRegister(String register) {
        this.register = register;
    }

    public String getRegister() {
        return register;
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
                .append("operateStatus", getOperateStatus())
                .append("operateTime", getOperateTime())
                .append("register", getRegister())
                .append("remark", getRemark())
                .append("createTime", getCreateTime())
                .append("updateTime", getUpdateTime())
                .append("delFlag", getDelFlag())
                .toString();
    }
}
