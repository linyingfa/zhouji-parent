package com.zhouji.modules.transport.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.zhouji.common.utils.PageUtils;
import com.zhouji.common.utils.Query;

import com.zhouji.modules.transport.dao.TransportAddressManagementDao;
import com.zhouji.modules.transport.entity.TransportAddressManagementEntity;
import com.zhouji.modules.transport.service.TransportAddressManagementService;


@Service("transportAddressManagementService")
public class TransportAddressManagementServiceImpl extends ServiceImpl<TransportAddressManagementDao, TransportAddressManagementEntity> implements TransportAddressManagementService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<TransportAddressManagementEntity> page = this.selectPage(
                new Query<TransportAddressManagementEntity>(params).getPage(),
                new EntityWrapper<TransportAddressManagementEntity>()
        );

        return new PageUtils(page);
    }

}
