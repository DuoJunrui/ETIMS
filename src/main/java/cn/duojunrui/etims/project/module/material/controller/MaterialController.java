package cn.duojunrui.etims.project.module.material.controller;

import java.io.IOException;
import java.util.List;

import cn.duojunrui.etims.common.utils.file.FileUploadUtils;
import cn.duojunrui.etims.common.utils.file.FileUtils;
import cn.duojunrui.etims.framework.config.EtimsConfig;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.tomcat.jni.FileInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import cn.duojunrui.etims.framework.aspectj.lang.annotation.Log;
import cn.duojunrui.etims.framework.aspectj.lang.enums.BusinessType;
import cn.duojunrui.etims.project.module.material.domain.Material;
import cn.duojunrui.etims.project.module.material.service.IMaterialService;
import cn.duojunrui.etims.framework.web.controller.BaseController;
import cn.duojunrui.etims.framework.web.page.TableDataInfo;
import cn.duojunrui.etims.framework.web.domain.AjaxResult;
import cn.duojunrui.etims.common.utils.poi.ExcelUtil;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 教学资源信息操作处理
 *
 * @author Duojunrui
 * @date 2019-04-29
 */
@Controller
@RequestMapping("/module/material")
public class MaterialController extends BaseController {
    private String prefix = "module/material";

    @Autowired
    private IMaterialService materialService;

    @RequiresPermissions("module:material:view")
    @GetMapping()
    public String material() {
        return prefix + "/material";
    }

    /**
     * 查询教学资源列表
     */
    @RequiresPermissions("module:material:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Material material) {
        startPage();
        List<Material> list = materialService.selectMaterialList(material);
        return getDataTable(list);
    }


    /**
     * 导出教学资源列表
     */
    @RequiresPermissions("module:material:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Material material) {
        List<Material> list = materialService.selectMaterialList(material);
        ExcelUtil<Material> util = new ExcelUtil<Material>(Material.class);
        return util.exportExcel(list, "material");
    }

    /**
     * 新增教学资源
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存教学资源
     */
    @RequiresPermissions("module:material:add")
    @Log(title = "教学资源", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(@RequestParam("file") MultipartFile file, Material material) throws IOException {
        // 上传文件路径
        String filePath = EtimsConfig.getUploadPath();
        // 上传并返回新文件名称
        String fileName = FileUploadUtils.upload(filePath,file);
        material.setFilePath(fileName);
        return toAjax(materialService.insertMaterial(material));
    }

    /**
     * 修改教学资源
     */
    @GetMapping("/edit/{materialId}")
    public String edit(@PathVariable("materialId") Integer materialId, ModelMap mmap) {
        Material material = materialService.selectMaterialById(materialId);
        mmap.put("material", material);
        return prefix + "/edit";
    }

    /**
     * 修改保存教学资源
     */
    @RequiresPermissions("module:material:edit")
    @Log(title = "教学资源", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Material material) {
        return toAjax(materialService.updateMaterial(material));
    }

    /**
     * 下载教学资源
     */
    @GetMapping("/downloadFile/{materialId}")
    public void downloadFile(@PathVariable("materialId") Integer materialId, HttpServletResponse response,
                             HttpServletRequest request) throws Exception {
        Material material = materialService.selectMaterialById(materialId);
        String filePath = material.getFilePath();
        String realFileName = material.getFileName() + filePath.substring(filePath.indexOf("."));
        String path = EtimsConfig.getUploadPath() + material.getFilePath();
        response.setCharacterEncoding("utf-8");
        response.setContentType("multipart/form-data");
        response.setHeader("Content-Disposition",
                "attachment;fileName=" + FileUtils.setFileDownloadHeader(request, realFileName));
        FileUtils.writeBytes(path, response.getOutputStream());
    }

    /**
     * 删除教学资源
     */
    @RequiresPermissions("module:material:remove")
    @Log(title = "教学资源", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(materialService.deleteMaterialByIds(ids));
    }

}
