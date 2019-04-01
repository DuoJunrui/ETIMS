package cn.duojunrui.etims.controller;

import cn.duojunrui.etims.entity.PracticeMaterial;
import cn.duojunrui.etims.service.PracticeMaterialService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

@Controller
@RequestMapping(value = "practiceMaterial")
public class PracticeMaterialController {

    @Resource
    private PracticeMaterialService pms;

    @RequestMapping(value = "getByName", method = RequestMethod.POST)
    public PracticeMaterial getByName(String name) {
        return pms.getByName(name);
    }
}
