package cn.duojunrui.etims.service;

import cn.duojunrui.etims.entity.PracticeMaterial;
import cn.duojunrui.etims.mapper.PracticeMaterialMapper;
import cn.duojunrui.etims.utils.UUIDUtil;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.Date;

@Service
public class PracticeMaterialService {

    @Resource
    private PracticeMaterialMapper pmm;

    public PracticeMaterial listPracticeFile() {
        return pmm.listPracticeFile();
    }

    public PracticeMaterial getByName(String name) {
        return pmm.getByName(name);
    }

    public PracticeMaterial insertPracticeMaterial(PracticeMaterial pm) {
        pm.setId(UUIDUtil.getUUID32());
        pm.setApplyStatus(0);
        pm.setCreateTime(new Date().getTime());
        pm.setIsDeleted(0);
        return pmm.insertPracticeMaterial(pm);
    }

    public PracticeMaterial updatePracticeMaterial(String id) {
        return pmm.updatePracticeMaterial(id);
    }

    public PracticeMaterial deleteById(PracticeMaterial pm) {
        pm.setUpdateTime(new Date().getTime());
        pm.setIsDeleted(1);
        return pmm.deleteById(pm);
    }

}
