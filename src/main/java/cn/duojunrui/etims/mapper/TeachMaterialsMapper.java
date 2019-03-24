package cn.duojunrui.etims.mapper;
import cn.duojunrui.etims.entity.TeachMaterials;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface TeachMaterialsMapper {

    //查询所有教学资料
    List<TeachMaterials> findTeachFilesAll();

    //上传教学资料
    int inputTeachFiles(TeachMaterials tm);

    //更新、修改教学资料
    int updateTeachFiles(TeachMaterials id);

    //删除教学资料
    int deleteTeachFiles(TeachMaterials id);
}
