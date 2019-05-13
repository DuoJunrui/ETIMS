package cn.duojunrui.etims.project.module.grade.controller;

import java.util.List;

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
import cn.duojunrui.etims.project.module.grade.domain.Grade;
import cn.duojunrui.etims.project.module.grade.service.IGradeService;
import cn.duojunrui.etims.framework.web.controller.BaseController;
import cn.duojunrui.etims.framework.web.page.TableDataInfo;
import cn.duojunrui.etims.framework.web.domain.AjaxResult;
import cn.duojunrui.etims.common.utils.poi.ExcelUtil;

/**
 * 考核成绩信息操作处理
 *
 * @author Duojunrui
 * @date 2019-05-13
 */
@Controller
@RequestMapping("/module/grade")
public class GradeController extends BaseController {
    private String prefix = "module/grade";

    @Autowired
    private IGradeService gradeService;

    @RequiresPermissions("module:grade:view")
    @GetMapping()
    public String grade() {
        return prefix + "/grade";
    }

    /**
     * 查询考核成绩列表
     */
    @RequiresPermissions("module:grade:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Grade grade) {
        startPage();
        List<Grade> list = gradeService.selectGradeList(grade);
        return getDataTable(list);
    }


    /**
     * 导出考核成绩列表
     */
    @RequiresPermissions("module:grade:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Grade grade) {
        List<Grade> list = gradeService.selectGradeList(grade);
        ExcelUtil<Grade> util = new ExcelUtil<Grade>(Grade.class);
        return util.exportExcel(list, "grade");
    }

    /**
     * 新增考核成绩
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存考核成绩
     */
    @RequiresPermissions("module:grade:add")
    @Log(title = "考核成绩", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Grade grade) {
        return toAjax(gradeService.insertGrade(grade));
    }

    /**
     * 修改考核成绩
     */
    @GetMapping("/edit/{gradeId}")
    public String edit(@PathVariable("gradeId") Long gradeId, ModelMap mmap) {
        Grade grade = gradeService.selectGradeById(gradeId);
        mmap.put("grade", grade);
        return prefix + "/edit";
    }

    /**
     * 修改保存考核成绩
     */
    @RequiresPermissions("module:grade:edit")
    @Log(title = "考核成绩", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Grade grade) {
        return toAjax(gradeService.updateGrade(grade));
    }

    /**
     * 删除考核成绩
     */
    @RequiresPermissions("module:grade:remove")
    @Log(title = "考核成绩", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(gradeService.deleteGradeByIds(ids));
    }

}
