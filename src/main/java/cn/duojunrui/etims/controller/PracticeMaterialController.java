package cn.duojunrui.etims.controller;

import cn.duojunrui.etims.entity.PracticeMaterial;
import cn.duojunrui.etims.service.PracticeMaterialService;
import cn.duojunrui.etims.utils.ResultUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.Date;

@RestController
@RequestMapping("/practiceMaterial")
public class PracticeMaterialController {

    @Resource
    private PracticeMaterialService pms;

    // 查询所有实习材料文件
    @GetMapping
    public PracticeMaterial listPracticeFile() {
        return pms.listPracticeFile();
    }

    // 根据姓名查询实习材料
    @GetMapping("/{name}")
    public PracticeMaterial getByName(@PathVariable String name) {
        return pms.getByName(name);
    }

    @PostMapping
    public PracticeMaterial insertPracticeMaterial(PracticeMaterial pm) {
        return pms.insertPracticeMaterial(pm);

    }


}
