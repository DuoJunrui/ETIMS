package cn.duojunrui.etims.mapper;
import cn.duojunrui.etims.entity.TeachMaterials;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
@Mapper
@Repository
public interface TeachMaterialsMapper {

    //查询所有教学资料
    List<TeachMaterials> findTeachFilesAll();

    //通过文件名查询资料
    List<TeachMaterials> findFilesByName(String fileName);

    //上传教学资料
    int addTeachFiles(TeachMaterials tm);

    //更新、修改教学资料
    int updateTeachFiles(String id);

    //删除教学资料
    int deleteTeachFiles(String id);
}
