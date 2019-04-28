package cn.duojunrui.etims.project.module.equipment.controller;

import java.util.List;

import cn.duojunrui.etims.common.utils.poi.ExcelUtil;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import cn.duojunrui.etims.framework.aspectj.lang.annotation.Log;
import cn.duojunrui.etims.framework.aspectj.lang.enums.BusinessType;
import cn.duojunrui.etims.project.module.equipment.domain.Equipment;
import cn.duojunrui.etims.project.module.equipment.service.IEquipmentService;
import cn.duojunrui.etims.framework.web.controller.BaseController;
import cn.duojunrui.etims.framework.web.page.TableDataInfo;
import cn.duojunrui.etims.framework.web.domain.AjaxResult;

/**
 * 实验室设备操作处理
 *
 * @author Duojunrui
 * @date 2019-04-27
 */
@Controller
@RequestMapping("/module/equipment")
public class EquipmentController extends BaseController {
    private String prefix = "module/equipment";

    @Autowired
    private IEquipmentService equipmentService;

    @RequiresPermissions("module:equipment:view")
    @GetMapping()
    public String equipment() {
        return prefix + "/equipment";
    }

    /**
     * 查询实验室设备列表
     */
    @RequiresPermissions("module:equipment:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Equipment equipment) {
        startPage();
        List<Equipment> list = equipmentService.selectEquipmentList(equipment);
        return getDataTable(list);
    }


    /**
     * 导出实验室设备列表
     */
    @RequiresPermissions("module:equipment:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Equipment equipment) {
        List<Equipment> list = equipmentService.selectEquipmentList(equipment);
        ExcelUtil<Equipment> util = new ExcelUtil<Equipment>(Equipment.class);
        return util.exportExcel(list, "equipment");
    }

    /**
     * 新增实验室设备（设备入库）
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存实验室设备（设备入库）
     */
    @RequiresPermissions("module:equipment:add")
    @Log(title = "实验室设备", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Equipment equipment) {
        return toAjax(equipmentService.insertEquipment(equipment));
    }

    /**
     * 修改实验室设备（入库信息修改）
     */
    @GetMapping("/edit/{equipmentId}")
    public String edit(@PathVariable("equipmentId") Long equipmentId, ModelMap mmap) {
        Equipment equipment = equipmentService.selectEquipmentById(equipmentId);
        mmap.put("equipment", equipment);
        return prefix + "/edit";
    }

    /**
     * 修改保存实验室设备（入库信息修改）
     */
    @RequiresPermissions("module:equipment:edit")
    @Log(title = "实验室设备", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Equipment equipment) {
        return toAjax(equipmentService.updateEquipment(equipment));
    }

    /**
     * 修改保存实验室设备（出库登记）
     */
    @RequiresPermissions("module:equipment:output")
    @Log(title = "实验室设备", businessType = BusinessType.UPDATE)
    @PostMapping("/output")
    @ResponseBody
    public AjaxResult outputSave(Equipment equipment) {
        return toAjax(equipmentService.updateEquipment(equipment));
    }

    /**
     * 修改保存实验室设备（归还登记）
     */
    @RequiresPermissions("module:equipment:input")
    @Log(title = "实验室设备", businessType = BusinessType.UPDATE)
    @PostMapping("/input")
    @ResponseBody
    public AjaxResult inputSave(Equipment equipment) {
        return toAjax(equipmentService.updateEquipment(equipment));
    }

    /**
     * 删除实验室设备（仓储设备信息删除）
     */
    @RequiresPermissions("module:equipment:remove")
    @Log(title = "实验室设备", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(equipmentService.deleteEquipmentByIds(ids));
    }

}
