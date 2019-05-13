package cn.duojunrui.etims.project.module.store.controller;

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
import cn.duojunrui.etims.project.module.store.domain.Store;
import cn.duojunrui.etims.project.module.store.service.IStoreService;
import cn.duojunrui.etims.framework.web.controller.BaseController;
import cn.duojunrui.etims.framework.web.page.TableDataInfo;
import cn.duojunrui.etims.framework.web.domain.AjaxResult;
import cn.duojunrui.etims.common.utils.poi.ExcelUtil;

/**
 * 创业园店铺信息操作处理
 *
 * @author Duojunrui
 * @date 2019-05-13
 */
@Controller
@RequestMapping("/module/store")
public class StoreController extends BaseController {
    private String prefix = "module/store";

    @Autowired
    private IStoreService storeService;

    @RequiresPermissions("module:store:view")
    @GetMapping()
    public String store() {
        return prefix + "/store";
    }

    /**
     * 查询创业园店铺列表
     */
    @RequiresPermissions("module:store:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Store store) {
        startPage();
        List<Store> list = storeService.selectStoreList(store);
        return getDataTable(list);
    }


    /**
     * 导出创业园店铺列表
     */
    @RequiresPermissions("module:store:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Store store) {
        List<Store> list = storeService.selectStoreList(store);
        ExcelUtil<Store> util = new ExcelUtil<Store>(Store.class);
        return util.exportExcel(list, "store");
    }

    /**
     * 新增创业园店铺
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存创业园店铺
     */
    @RequiresPermissions("module:store:add")
    @Log(title = "创业园店铺", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Store store) {
        return toAjax(storeService.insertStore(store));
    }

    /**
     * 修改创业园店铺
     */
    @GetMapping("/edit/{storeId}")
    public String edit(@PathVariable("storeId") Long storeId, ModelMap mmap) {
        Store store = storeService.selectStoreById(storeId);
        mmap.put("store", store);
        return prefix + "/edit";
    }

    /**
     * 修改保存创业园店铺
     */
    @RequiresPermissions("module:store:edit")
    @Log(title = "创业园店铺", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Store store) {
        return toAjax(storeService.updateStore(store));
    }

    /**
     * 删除创业园店铺
     */
    @RequiresPermissions("module:store:remove")
    @Log(title = "创业园店铺", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(storeService.deleteStoreByIds(ids));
    }

}
