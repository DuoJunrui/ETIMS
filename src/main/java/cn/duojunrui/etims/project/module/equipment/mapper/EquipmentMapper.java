package cn.duojunrui.etims.project.module.equipment.mapper;

import cn.duojunrui.etims.project.module.equipment.domain.Equipment;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 实验室设备 数据层
 *
 * @author Duojunrui
 * @date 2019-04-27
 */
@Mapper
public interface EquipmentMapper {
    /**
     * 查询实验室设备信息
     *
     * @param equipmentId 实验室设备ID
     * @return 实验室设备信息
     */
    public Equipment selectEquipmentById(Long equipmentId);

    /**
     * 查询实验室设备列表
     *
     * @param equipment 实验室设备信息
     * @return 实验室设备集合
     */
    public List<Equipment> selectEquipmentList(Equipment equipment);

    /**
     * 新增实验室设备
     *
     * @param equipment 实验室设备信息
     * @return 结果
     */
    public int insertEquipment(Equipment equipment);

    /**
     * 修改实验室设备
     *
     * @param equipment 实验室设备信息
     * @return 结果
     */
    public int updateEquipment(Equipment equipment);

    /**
     * 删除实验室设备
     *
     * @param equipmentId 实验室设备ID
     * @return 结果
     */
    public int deleteEquipmentById(Long equipmentId);

    /**
     * 批量删除实验室设备
     *
     * @param equipmentIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteEquipmentByIds(String[] equipmentIds);

}