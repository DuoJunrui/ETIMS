package cn.duojunrui.etims.service;

import cn.duojunrui.etims.entity.PracticeMaterial;
import cn.duojunrui.etims.mapper.PracticeMaterialMapper;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;

@Service
public class PracticeMaterialService {

    @Resource
    private PracticeMaterialMapper pmm;

    public PracticeMaterial getByName(String name) {
        return pmm.getByName(name);
    }
}
