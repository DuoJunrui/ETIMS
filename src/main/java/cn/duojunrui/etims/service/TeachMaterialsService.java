package cn.duojunrui.etims.service;

import cn.duojunrui.etims.entity.TeachMaterials;
import cn.duojunrui.etims.mapper.TeachMaterialsMapper;
import cn.duojunrui.etims.utils.UUIDUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Service
public class TeachMaterialsService {

    @Autowired
    private TeachMaterialsMapper tmm;

    public List<TeachMaterials> findTeachFilesAll() {
        return tmm.findTeachFilesAll();
    }

    public int inputTeachFiles(TeachMaterials tm) {
        tm.setTeachMaterialsId(UUIDUtil.getUUID32());
        tm.setCreateTime(new Date());
        tm.setValidity(1);
        return tmm.inputTeachFiles(tm);
    }

    public int updateTeachFiles(TeachMaterials filesId) {
        return 0;
    }

    public int deleteTeachFiles(TeachMaterials filesId) {
        filesId.setValidity(0);
        return deleteTeachFiles(filesId);
    }
}
