package cn.duojunrui.etims.mapper;

import cn.duojunrui.etims.entity.PracticeMaterial;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PracticeMaterialMapper {

    PracticeMaterial listPracticeFile();

    PracticeMaterial getByName(String name);

    PracticeMaterial insertPracticeMaterial(PracticeMaterial pm);

    PracticeMaterial updatePracticeMaterial(String id);

    PracticeMaterial deleteById(PracticeMaterial pm);
}
