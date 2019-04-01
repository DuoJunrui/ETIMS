package cn.duojunrui.etims.mapper;

import cn.duojunrui.etims.entity.PracticeMaterial;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PracticeMaterialMapper {

    PracticeMaterial getByName(String name);
}
