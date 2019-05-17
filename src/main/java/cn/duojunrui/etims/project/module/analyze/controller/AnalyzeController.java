package cn.duojunrui.etims.project.module.analyze.controller;

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
import cn.duojunrui.etims.project.module.analyze.domain.Analyze;
import cn.duojunrui.etims.project.module.analyze.service.IAnalyzeService;
import cn.duojunrui.etims.framework.web.controller.BaseController;
import cn.duojunrui.etims.framework.web.page.TableDataInfo;
import cn.duojunrui.etims.framework.web.domain.AjaxResult;
import cn.duojunrui.etims.common.utils.poi.ExcelUtil;

/**
 * 统计分析信息操作处理
 *
 * @author Duojunrui
 * @date 2019-05-17
 */
@Controller
@RequestMapping("/module/analyze")
public class AnalyzeController extends BaseController {
    private String prefix = "module/analyze";

    @Autowired
    private IAnalyzeService analyzeService;

    @RequiresPermissions("module:analyze:view")
    @GetMapping()
    public String analyze() {
        return prefix + "/analyze";
    }

    /**
     * 查询统计分析列表
     */
    @RequiresPermissions("module:analyze:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Analyze analyze) {
        startPage();
        List<Analyze> list = analyzeService.selectAnalyzeList(analyze);
        return getDataTable(list);
    }


    /**
     * 导出统计分析列表
     */
    @RequiresPermissions("module:analyze:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Analyze analyze) {
        List<Analyze> list = analyzeService.selectAnalyzeList(analyze);
        ExcelUtil<Analyze> util = new ExcelUtil<Analyze>(Analyze.class);
        return util.exportExcel(list, "analyze");
    }

    /**
     * 新增统计分析
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存统计分析
     */
    @RequiresPermissions("module:analyze:add")
    @Log(title = "统计分析", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Analyze analyze) {
        return toAjax(analyzeService.insertAnalyze(analyze));
    }

    /**
     * 修改统计分析
     */
    @GetMapping("/edit/{analyzeId}")
    public String edit(@PathVariable("analyzeId") Integer analyzeId, ModelMap mmap) {
        Analyze analyze = analyzeService.selectAnalyzeById(analyzeId);
        mmap.put("analyze", analyze);
        return prefix + "/edit";
    }

    /**
     * 修改保存统计分析
     */
    @RequiresPermissions("module:analyze:edit")
    @Log(title = "统计分析", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Analyze analyze) {
        return toAjax(analyzeService.updateAnalyze(analyze));
    }

    /**
     * 删除统计分析
     */
    @RequiresPermissions("module:analyze:remove")
    @Log(title = "统计分析", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(analyzeService.deleteAnalyzeByIds(ids));
    }

}
