package cn.duojunrui.etims.project.module.material.service.impl;

import java.util.List;

import cn.duojunrui.etims.common.utils.DateUtils;
import cn.duojunrui.etims.common.utils.file.FileUploadUtils;
import cn.duojunrui.etims.common.utils.file.FileUtils;
import cn.duojunrui.etims.common.utils.security.ShiroUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.duojunrui.etims.project.module.material.mapper.MaterialMapper;
import cn.duojunrui.etims.project.module.material.domain.Material;
import cn.duojunrui.etims.project.module.material.service.IMaterialService;
import cn.duojunrui.etims.common.utils.text.Convert;
import org.springframework.web.multipart.MultipartFile;

/**
 * 教学资源 服务层实现
 *
 * @author Duojunrui
 * @date 2019-04-29
 */
@Service
public class MaterialServiceImpl implements IMaterialService {
    @Autowired
    private MaterialMapper materialMapper;

    /**
     * 查询教学资源信息
     *
     * @param materialId 教学资源ID
     * @return 教学资源信息
     */
    @Override
    public Material selectMaterialById(Integer materialId) {
        return materialMapper.selectMaterialById(materialId);
    }

    /**
     * 查询教学资源列表
     *
     * @param material 教学资源信息
     * @return 教学资源集合
     */
    @Override
    public List<Material> selectMaterialList(Material material) {
        return materialMapper.selectMaterialList(material);
    }

    /**
     * 新增教学资源
     *
     * @param material 教学资源信息
     * @return 结果
     */
    @Override
    public int insertMaterial(Material material) {

        material.setUploader(ShiroUtils.getUserName());
        material.setDownloadCount("0");
        material.setCreateTime(DateUtils.getNowDate());
        material.setDelFlag("0");
        return materialMapper.insertMaterial(material);
    }

    /**
     * 修改教学资源
     *
     * @param material 教学资源信息
     * @return 结果
     */
    @Override
    public int updateMaterial(Material material) {
        return materialMapper.updateMaterial(material);
    }

    /**
     * 删除教学资源对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMaterialByIds(String ids) {
        return materialMapper.deleteMaterialByIds(Convert.toStrArray(ids));
    }

}
