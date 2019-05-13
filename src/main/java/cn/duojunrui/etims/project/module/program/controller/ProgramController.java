package cn.duojunrui.etims.project.module.program.controller;

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
import cn.duojunrui.etims.project.module.program.domain.Program;
import cn.duojunrui.etims.project.module.program.service.IProgramService;
import cn.duojunrui.etims.framework.web.controller.BaseController;
import cn.duojunrui.etims.framework.web.page.TableDataInfo;
import cn.duojunrui.etims.framework.web.domain.AjaxResult;
import cn.duojunrui.etims.common.utils.poi.ExcelUtil;

/**
 * 教学计划信息操作处理
 *
 * @author Duojunrui
 * @date 2019-05-13
 */
@Controller
@RequestMapping("/module/program")
public class ProgramController extends BaseController {
    private String prefix = "module/program";

    @Autowired
    private IProgramService programService;

    @RequiresPermissions("module:program:view")
    @GetMapping()
    public String program() {
        return prefix + "/program";
    }

    /**
     * 查询教学计划列表
     */
    @RequiresPermissions("module:program:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Program program) {
        startPage();
        List<Program> list = programService.selectProgramList(program);
        return getDataTable(list);
    }


    /**
     * 导出教学计划列表
     */
    @RequiresPermissions("module:program:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Program program) {
        List<Program> list = programService.selectProgramList(program);
        ExcelUtil<Program> util = new ExcelUtil<Program>(Program.class);
        return util.exportExcel(list, "program");
    }

    /**
     * 新增教学计划
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存教学计划
     */
    @RequiresPermissions("module:program:add")
    @Log(title = "教学计划", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Program program) {
        return toAjax(programService.insertProgram(program));
    }

    /**
     * 修改教学计划
     */
    @GetMapping("/edit/{programId}")
    public String edit(@PathVariable("programId") Long programId, ModelMap mmap) {
        Program program = programService.selectProgramById(programId);
        mmap.put("program", program);
        return prefix + "/edit";
    }

    /**
     * 修改保存教学计划
     */
    @RequiresPermissions("module:program:edit")
    @Log(title = "教学计划", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Program program) {
        return toAjax(programService.updateProgram(program));
    }

    /**
     * 删除教学计划
     */
    @RequiresPermissions("module:program:remove")
    @Log(title = "教学计划", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(programService.deleteProgramByIds(ids));
    }

}
