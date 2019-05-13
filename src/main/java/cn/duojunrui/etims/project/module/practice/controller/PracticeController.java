package cn.duojunrui.etims.project.module.practice.controller;

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
import cn.duojunrui.etims.project.module.practice.domain.Practice;
import cn.duojunrui.etims.project.module.practice.service.IPracticeService;
import cn.duojunrui.etims.framework.web.controller.BaseController;
import cn.duojunrui.etims.framework.web.page.TableDataInfo;
import cn.duojunrui.etims.framework.web.domain.AjaxResult;
import cn.duojunrui.etims.common.utils.poi.ExcelUtil;

/**
 * 顶岗实习信息操作处理
 *
 * @author Duojunrui
 * @date 2019-05-13
 */
@Controller
@RequestMapping("/module/practice")
public class PracticeController extends BaseController {
    private String prefix = "module/practice";

    @Autowired
    private IPracticeService practiceService;

    @RequiresPermissions("module:practice:view")
    @GetMapping()
    public String practice() {
        return prefix + "/practice";
    }

    /**
     * 查询顶岗实习列表
     */
    @RequiresPermissions("module:practice:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Practice practice) {
        startPage();
        List<Practice> list = practiceService.selectPracticeList(practice);
        return getDataTable(list);
    }


    /**
     * 导出顶岗实习列表
     */
    @RequiresPermissions("module:practice:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Practice practice) {
        List<Practice> list = practiceService.selectPracticeList(practice);
        ExcelUtil<Practice> util = new ExcelUtil<Practice>(Practice.class);
        return util.exportExcel(list, "practice");
    }

    /**
     * 新增顶岗实习
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存顶岗实习
     */
    @RequiresPermissions("module:practice:add")
    @Log(title = "顶岗实习", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Practice practice) {
        return toAjax(practiceService.insertPractice(practice));
    }

    /**
     * 修改顶岗实习
     */
    @GetMapping("/edit/{practiceId}")
    public String edit(@PathVariable("practiceId") Long practiceId, ModelMap mmap) {
        Practice practice = practiceService.selectPracticeById(practiceId);
        mmap.put("practice", practice);
        return prefix + "/edit";
    }

    /**
     * 修改保存顶岗实习
     */
    @RequiresPermissions("module:practice:edit")
    @Log(title = "顶岗实习", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Practice practice) {
        return toAjax(practiceService.updatePractice(practice));
    }

    /**
     * 删除顶岗实习
     */
    @RequiresPermissions("module:practice:remove")
    @Log(title = "顶岗实习", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(practiceService.deletePracticeByIds(ids));
    }

}
