package cn.duojunrui.etims.service;
import cn.duojunrui.etims.entity.TeachMaterial;
import cn.duojunrui.etims.mapper.TeachMaterialMapper;
import cn.duojunrui.etims.utils.UUIDUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.Date;
import java.util.List;

@Service
public class TeachMaterialService {

    @Autowired
    private TeachMaterialMapper tmm;

    //查询所有教学资料
    public List<TeachMaterial> listTeachFileAll() {
        return tmm.listTeachFileAll();
    }

    //通过文件名查询资料
    public List<TeachMaterial> listFileByName(String fileName) {
        return tmm.listFileByName(fileName);
    }

    //上传教学资料
    @Transactional  //回滚
    public int insertTeachFile(TeachMaterial tm) {
        tm.setId(UUIDUtil.getUUID32());
        tm.setCreateTime(new Date());
        tm.setIsDeleted(0);
        return tmm.insertTeachFile(tm);
    }

    //更新、修改教学资料
    public int updateTeachFile(TeachMaterial filesId) {
        return 0;
    }

    //删除教学资料
    public int deleteTeachFile(TeachMaterial filesId) {
        filesId.setIsDeleted(1);
        return deleteTeachFile(filesId);
    }

}
