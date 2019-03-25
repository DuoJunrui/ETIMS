package cn.duojunrui.etims.service;

import cn.duojunrui.etims.entity.TeachMaterials;
import cn.duojunrui.etims.mapper.TeachMaterialsMapper;
import cn.duojunrui.etims.utils.UUIDUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Service
public class TeachMaterialsService {

    @Autowired
    private TeachMaterialsMapper tmm;

    //查询所有教学资料
    public List<TeachMaterials> findTeachFilesAll() {
        return tmm.findTeachFilesAll();
    }

    //通过文件名查询资料
    public List<TeachMaterials> findFilesByName(String fileName) {
        return tmm.findFilesByName(fileName);
    }

    //上传教学资料
    @Transactional  //回滚
    public int addTeachFiles(TeachMaterials tm) {
        tm.setTeachMaterialsId(UUIDUtil.getUUID32());
        tm.setCreateTime(new Date());
        tm.setValidity(1);
        return tmm.addTeachFiles(tm);
    }

    //更新、修改教学资料
    public int updateTeachFiles(TeachMaterials filesId) {
        return 0;
    }

    //删除教学资料
    public int deleteTeachFiles(TeachMaterials filesId) {
        filesId.setValidity(0);
        return deleteTeachFiles(filesId);
    }

}
