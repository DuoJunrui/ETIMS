package cn.duojunrui.etims.controller;

import cn.duojunrui.etims.entity.PracticeMaterial;
import cn.duojunrui.etims.service.PracticeMaterialService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

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

    @PutMapping("/{id}")
    public PracticeMaterial updatePracticeMaterial(String id) {
        return pms.updatePracticeMaterial(id);
    }

    @DeleteMapping("/{id}")
    public PracticeMaterial deleteById(PracticeMaterial pm) {
        return this.deleteById(pm);
    }


}
