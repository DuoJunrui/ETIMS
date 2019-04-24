package cn.duojunrui.etims.module.material.controller;

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
import cn.duojunrui.etims.module.material.domain.Material;
import cn.duojunrui.etims.module.material.service.IMaterialService;
import cn.duojunrui.etims.framework.web.controller.BaseController;
import cn.duojunrui.etims.framework.web.page.TableDataInfo;
import cn.duojunrui.etims.framework.web.domain.AjaxResult;
import cn.duojunrui.etims.common.utils.poi.ExcelUtil;

/**
 * 教学资源信息操作处理
 * 
 * @author Duojunrui
 * @date 2019-04-24
 */
@Controller
@RequestMapping("/module/material")
public class MaterialController extends BaseController
{
    private String prefix = "module/material";
	
	@Autowired
	private IMaterialService materialService;
	
	@RequiresPermissions("module:material:view")
	@GetMapping()
	public String material()
	{
	    return prefix + "/material";
	}
	
	/**
	 * 查询教学资源列表
	 */
	@RequiresPermissions("module:material:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(Material material)
	{
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
    public AjaxResult export(Material material)
    {
    	List<Material> list = materialService.selectMaterialList(material);
        ExcelUtil<Material> util = new ExcelUtil<Material>(Material.class);
        return util.exportExcel(list, "material");
    }
	
	/**
	 * 新增教学资源
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存教学资源
	 */
	@RequiresPermissions("module:material:add")
	@Log(title = "教学资源", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(Material material)
	{		
		return toAjax(materialService.insertMaterial(material));
	}

	/**
	 * 修改教学资源
	 */
	@GetMapping("/edit/{materialId}")
	public String edit(@PathVariable("materialId") Long materialId, ModelMap mmap)
	{
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
	public AjaxResult editSave(Material material)
	{		
		return toAjax(materialService.updateMaterial(material));
	}
	
	/**
	 * 删除教学资源
	 */
	@RequiresPermissions("module:material:remove")
	@Log(title = "教学资源", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(materialService.deleteMaterialByIds(ids));
	}
	
}
