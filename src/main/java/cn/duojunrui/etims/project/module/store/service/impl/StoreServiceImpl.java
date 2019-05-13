package cn.duojunrui.etims.project.module.store.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.duojunrui.etims.project.module.store.mapper.StoreMapper;
import cn.duojunrui.etims.project.module.store.domain.Store;
import cn.duojunrui.etims.project.module.store.service.IStoreService;
import cn.duojunrui.etims.common.utils.text.Convert;

import javax.annotation.Resource;

/**
 * 创业园店铺 服务层实现
 *
 * @author Duojunrui
 * @date 2019-05-13
 */
@Service
public class StoreServiceImpl implements IStoreService {
    @Resource
    private StoreMapper storeMapper;

    /**
     * 查询创业园店铺信息
     *
     * @param storeId 创业园店铺ID
     * @return 创业园店铺信息
     */
    @Override
    public Store selectStoreById(Long storeId) {
        return storeMapper.selectStoreById(storeId);
    }

    /**
     * 查询创业园店铺列表
     *
     * @param store 创业园店铺信息
     * @return 创业园店铺集合
     */
    @Override
    public List<Store> selectStoreList(Store store) {
        return storeMapper.selectStoreList(store);
    }

    /**
     * 新增创业园店铺
     *
     * @param store 创业园店铺信息
     * @return 结果
     */
    @Override
    public int insertStore(Store store) {
        return storeMapper.insertStore(store);
    }

    /**
     * 修改创业园店铺
     *
     * @param store 创业园店铺信息
     * @return 结果
     */
    @Override
    public int updateStore(Store store) {
        return storeMapper.updateStore(store);
    }

    /**
     * 删除创业园店铺对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteStoreByIds(String ids) {
        return storeMapper.deleteStoreByIds(Convert.toStrArray(ids));
    }

}
