package cn.duojunrui.etims.project.system.post.controller;

import cn.duojunrui.etims.common.utils.poi.ExcelUtil;
import cn.duojunrui.etims.framework.aspectj.lang.annotation.Log;
import cn.duojunrui.etims.framework.aspectj.lang.enums.BusinessType;
import cn.duojunrui.etims.framework.web.controller.BaseController;
import cn.duojunrui.etims.framework.web.domain.AjaxResult;
import cn.duojunrui.etims.framework.web.page.TableDataInfo;
import cn.duojunrui.etims.project.system.post.domain.Post;
import cn.duojunrui.etims.project.system.post.service.IPostService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 岗位信息操作处理
 *
 * @className: PostController
 * @author: Duojunrui
 * @date: 2019-04-19 21:18
 */

@Controller
@RequestMapping("/system/post")
public class PostController extends BaseController {
    private String prefix = "system/post";

    @Autowired
    private IPostService postService;

    @RequiresPermissions("system:post:view")
    @GetMapping()
    public String operlog() {
        return prefix + "/post";
    }

    @RequiresPermissions("system:post:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Post post) {
        startPage();
        List<Post> list = postService.selectPostList(post);
        return getDataTable(list);
    }

    @Log(title = "岗位管理" , businessType = BusinessType.EXPORT)
    @RequiresPermissions("system:post:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Post post) {
        List<Post> list = postService.selectPostList(post);
        ExcelUtil<Post> util = new ExcelUtil<Post>(Post.class);
        return util.exportExcel(list, "岗位数据");
    }

    @RequiresPermissions("system:post:remove")
    @Log(title = "岗位管理" , businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        try {
            return toAjax(postService.deletePostByIds(ids));
        } catch (Exception e) {
            return error(e.getMessage());
        }
    }

    /**
     * 新增岗位
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存岗位
     */
    @RequiresPermissions("system:post:add")
    @Log(title = "岗位管理" , businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Post post) {
        return toAjax(postService.insertPost(post));
    }

    /**
     * 修改岗位
     */
    @GetMapping("/edit/{postId}")
    public String edit(@PathVariable("postId") Long postId, ModelMap mmap) {
        mmap.put("post" , postService.selectPostById(postId));
        return prefix + "/edit";
    }

    /**
     * 修改保存岗位
     */
    @RequiresPermissions("system:post:edit")
    @Log(title = "岗位管理" , businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Post post) {
        return toAjax(postService.updatePost(post));
    }

    /**
     * 校验岗位名称
     */
    @PostMapping("/checkPostNameUnique")
    @ResponseBody
    public String checkPostNameUnique(Post post) {
        return postService.checkPostNameUnique(post);
    }

    /**
     * 校验岗位编码
     */
    @PostMapping("/checkPostCodeUnique")
    @ResponseBody
    public String checkPostCodeUnique(Post post) {
        return postService.checkPostCodeUnique(post);
    }
}
