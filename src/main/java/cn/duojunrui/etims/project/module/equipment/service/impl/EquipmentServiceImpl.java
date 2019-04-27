package cn.duojunrui.etims.project.module.equipment.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.duojunrui.etims.project.module.equipment.mapper.EquipmentMapper;
import cn.duojunrui.etims.project.module.equipment.domain.Equipment;
import cn.duojunrui.etims.project.module.equipment.service.IEquipmentService;
import cn.duojunrui.etims.common.utils.text.Convert;

/**
 * 实验室设备 服务层实现
 *
 * @author Duojunrui
 * @date 2019-04-27
 */
@Service
public class EquipmentServiceImpl implements IEquipmentService {
    @Autowired
    private EquipmentMapper equipmentMapper;

    /**
     * 查询实验室设备信息
     *
     * @param equipmentId 实验室设备ID
     * @return 实验室设备信息
     */
    @Override
    public Equipment selectEquipmentById(Long equipmentId) {
        return equipmentMapper.selectEquipmentById(equipmentId);
    }

    /**
     * 查询实验室设备列表
     *
     * @param equipment 实验室设备信息
     * @return 实验室设备集合
     */
    @Override
    public List<Equipment> selectEquipmentList(Equipment equipment) {
        return equipmentMapper.selectEquipmentList(equipment);
    }

    /**
     * 新增实验室设备
     *
     * @param equipment 实验室设备信息
     * @return 结果
     */
    @Override
    public int insertEquipment(Equipment equipment) {
        return equipmentMapper.insertEquipment(equipment);
    }

    /**
     * 修改实验室设备
     *
     * @param equipment 实验室设备信息
     * @return 结果
     */
    @Override
    public int updateEquipment(Equipment equipment) {
        return equipmentMapper.updateEquipment(equipment);
    }

    /**
     * 删除实验室设备对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteEquipmentByIds(String ids) {
        return equipmentMapper.deleteEquipmentByIds(Convert.toStrArray(ids));
    }

}
