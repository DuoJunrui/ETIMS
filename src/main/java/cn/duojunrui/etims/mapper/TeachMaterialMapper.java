package cn.duojunrui.etims.mapper;
import cn.duojunrui.etims.entity.TeachMaterial;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
@Mapper
@Repository
public interface TeachMaterialMapper {

    //查询所有教学资料
    List<TeachMaterial> listTeachFileAll();

    //通过文件名查询资料
    List<TeachMaterial> listFileByName(String fileName);

    //上传教学资料
    int insertTeachFile(TeachMaterial tm);

    //更新、修改教学资料
    int updateTeachFile(String id);

    //删除教学资料
    int deleteTeachFile(String id);
}
