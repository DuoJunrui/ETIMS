package cn.duojunrui.etims.common.controller;

import cn.duojunrui.etims.common.config.EtimsConfig;
import cn.duojunrui.etims.common.domain.FileDO;
import cn.duojunrui.etims.common.service.FileService;
import cn.duojunrui.etims.common.utils.*;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * TODO
 *
 * @className: FileController
 * @author: Duojunrui
 * @date: 2019-04-16 17:26
 */

@Controller
@RequestMapping("/common/sysFile")
public class FileController extends BaseController {

    @Autowired
    private FileService sysFileService;

    @Autowired
    private EtimsConfig etimsConfig;

    @GetMapping()
    @RequiresPermissions("common:sysFile:sysFile")
    String sysFile(Model model) {
        Map<String, Object> params = new HashMap<>(16);
        return "common/file/file";
    }

    @ResponseBody
    @GetMapping("/list")
    @RequiresPermissions("common:sysFile:sysFile")
    public PageUtils list(@RequestParam Map<String, Object> params) {
        // 查询列表数据
        Query query = new Query(params);
        List<FileDO> sysFileList = sysFileService.list(query);
        int total = sysFileService.count(query);
        PageUtils pageUtils = new PageUtils(sysFileList, total);
        return pageUtils;
    }

    @GetMapping("/add")
        // @RequiresPermissions("common:bComments")
    String add() {
        return "common/sysFile/add";
    }

    @GetMapping("/edit")
        // @RequiresPermissions("common:bComments")
    String edit(Long id, Model model) {
        FileDO sysFile = sysFileService.get(id);
        model.addAttribute("sysFile", sysFile);
        return "common/sysFile/edit";
    }

    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("common:info")
    public ResultUtils info(@PathVariable("id") Long id) {
        FileDO sysFile = sysFileService.get(id);
        return ResultUtils.ok().put("sysFile", sysFile);
    }

    /**
     * 保存
     */
    @ResponseBody
    @PostMapping("/save")
    @RequiresPermissions("common:save")
    public ResultUtils save(FileDO sysFile) {
        if (sysFileService.save(sysFile) > 0) {
            return ResultUtils.ok();
        }
        return ResultUtils.error();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("common:update")
    public ResultUtils update(@RequestBody FileDO sysFile) {
        sysFileService.update(sysFile);

        return ResultUtils.ok();
    }

    /**
     * 删除
     */
    @PostMapping("/remove")
    @ResponseBody
    // @RequiresPermissions("common:remove")
    public ResultUtils remove(Long id, HttpServletRequest request) {
        if ("test".equals(getUsername())) {
            return ResultUtils.error(1, "演示系统不允许修改,完整体验请部署程序");
        }
        String fileName = etimsConfig.getUploadPath() + sysFileService.get(id).getUrl().replace("/files/", "");
        if (sysFileService.remove(id) > 0) {
            boolean b = FileUtil.deleteFile(fileName);
            if (!b) {
                return ResultUtils.error("数据库记录删除成功，文件删除失败");
            }
            return ResultUtils.ok();
        } else {
            return ResultUtils.error();
        }
    }

    /**
     * 删除
     */
    @PostMapping("/batchRemove")
    @ResponseBody
    @RequiresPermissions("common:remove")
    public ResultUtils remove(@RequestParam("ids[]") Long[] ids) {
        if ("test".equals(getUsername())) {
            return ResultUtils.error(1, "演示系统不允许修改,完整体验请部署程序");
        }
        sysFileService.batchRemove(ids);
        return ResultUtils.ok();
    }

    @ResponseBody
    @PostMapping("/upload")
    ResultUtils upload(@RequestParam("file") MultipartFile file, HttpServletRequest request) {
        if ("test".equals(getUsername())) {
            return ResultUtils.error(1, "演示系统不允许修改,完整体验请部署程序");
        }
        String fileName = file.getOriginalFilename();
        fileName = FileUtil.renameToUUID(fileName);
        FileDO sysFile = new FileDO(FileType.fileType(fileName), "/files/" + fileName, new Date());
        try {
            FileUtil.uploadFile(file.getBytes(), etimsConfig.getUploadPath(), fileName);
        } catch (Exception e) {
            return ResultUtils.error();
        }

        if (sysFileService.save(sysFile) > 0) {
            return ResultUtils.ok().put("fileName",sysFile.getUrl());
        }
        return ResultUtils.error();
    }


}
