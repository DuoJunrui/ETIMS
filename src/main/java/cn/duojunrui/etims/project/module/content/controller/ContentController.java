package cn.duojunrui.etims.project.module.content.controller;

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
import cn.duojunrui.etims.project.module.content.domain.Content;
import cn.duojunrui.etims.project.module.content.service.IContentService;
import cn.duojunrui.etims.framework.web.controller.BaseController;
import cn.duojunrui.etims.framework.web.page.TableDataInfo;
import cn.duojunrui.etims.framework.web.domain.AjaxResult;
import cn.duojunrui.etims.common.utils.poi.ExcelUtil;

/**
 * 实验中心网站内容信息操作处理
 *
 * @author Duojunrui
 * @date 2019-05-13
 */
@Controller
@RequestMapping("/module/content")
public class ContentController extends BaseController {
    private String prefix = "module/content";

    @Autowired
    private IContentService contentService;

    @RequiresPermissions("module:content:view")
    @GetMapping()
    public String content() {
        return prefix + "/content";
    }

    /**
     * 查询实验中心网站内容列表
     */
    @RequiresPermissions("module:content:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Content content) {
        startPage();
        List<Content> list = contentService.selectContentList(content);
        return getDataTable(list);
    }


    /**
     * 导出实验中心网站内容列表
     */
    @RequiresPermissions("module:content:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Content content) {
        List<Content> list = contentService.selectContentList(content);
        ExcelUtil<Content> util = new ExcelUtil<Content>(Content.class);
        return util.exportExcel(list, "content");
    }

    /**
     * 新增实验中心网站内容
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存实验中心网站内容
     */
    @RequiresPermissions("module:content:add")
    @Log(title = "实验中心网站内容", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Content content) {
        return toAjax(contentService.insertContent(content));
    }

    /**
     * 修改实验中心网站内容
     */
    @GetMapping("/edit/{contentId}")
    public String edit(@PathVariable("contentId") Integer contentId, ModelMap mmap) {
        Content content = contentService.selectContentById(contentId);
        mmap.put("content", content);
        return prefix + "/edit";
    }

    /**
     * 修改保存实验中心网站内容
     */
    @RequiresPermissions("module:content:edit")
    @Log(title = "实验中心网站内容", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Content content) {
        return toAjax(contentService.updateContent(content));
    }

    /**
     * 删除实验中心网站内容
     */
    @RequiresPermissions("module:content:remove")
    @Log(title = "实验中心网站内容", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(contentService.deleteContentByIds(ids));
    }

}
