package cn.duojunrui.etims.project.monitor.operlog.controller;

import cn.duojunrui.etims.common.utils.poi.ExcelUtil;
import cn.duojunrui.etims.framework.aspectj.lang.annotation.Log;
import cn.duojunrui.etims.framework.aspectj.lang.enums.BusinessType;
import cn.duojunrui.etims.framework.web.controller.BaseController;
import cn.duojunrui.etims.framework.web.domain.AjaxResult;
import cn.duojunrui.etims.framework.web.page.TableDataInfo;
import cn.duojunrui.etims.project.monitor.operlog.domain.OperLog;
import cn.duojunrui.etims.project.monitor.operlog.service.IOperLogService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 操作日志记录
 *
 * @className: OperlogController
 * @author: Duojunrui
 * @date: 2019-04-19 20:37
 */

@Controller
@RequestMapping("/monitor/operlog")
public class OperlogController extends BaseController {
    private String prefix = "monitor/operlog";

    @Autowired
    private IOperLogService operLogService;

    @RequiresPermissions("monitor:operlog:view")
    @GetMapping()
    public String operlog() {
        return prefix + "/operlog";
    }

    @RequiresPermissions("monitor:operlog:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(OperLog operLog) {
        startPage();
        List<OperLog> list = operLogService.selectOperLogList(operLog);
        return getDataTable(list);
    }

    @Log(title = "操作日志" , businessType = BusinessType.EXPORT)
    @RequiresPermissions("monitor:operlog:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(OperLog operLog) {
        List<OperLog> list = operLogService.selectOperLogList(operLog);
        ExcelUtil<OperLog> util = new ExcelUtil<OperLog>(OperLog.class);
        return util.exportExcel(list, "操作日志");
    }

    @RequiresPermissions("monitor:operlog:remove")
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(operLogService.deleteOperLogByIds(ids));
    }

    @RequiresPermissions("monitor:operlog:detail")
    @GetMapping("/detail/{operId}")
    public String detail(@PathVariable("operId") Long operId, ModelMap mmap) {
        mmap.put("operLog" , operLogService.selectOperLogById(operId));
        return prefix + "/detail";
    }

    @Log(title = "操作日志" , businessType = BusinessType.CLEAN)
    @RequiresPermissions("monitor:operlog:remove")
    @PostMapping("/clean")
    @ResponseBody
    public AjaxResult clean() {
        operLogService.cleanOperLog();
        return success();
    }
}
