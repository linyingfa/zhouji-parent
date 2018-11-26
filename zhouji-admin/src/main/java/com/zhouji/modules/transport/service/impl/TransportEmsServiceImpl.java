package com.zhouji.modules.transport.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.zhouji.common.utils.PageUtils;
import com.zhouji.common.utils.Query;

import com.zhouji.modules.transport.dao.TransportEmsDao;
import com.zhouji.modules.transport.entity.TransportEmsEntity;
import com.zhouji.modules.transport.service.TransportEmsService;


@Service("transportEmsService")
public class TransportEmsServiceImpl extends ServiceImpl<TransportEmsDao, TransportEmsEntity> implements TransportEmsService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<TransportEmsEntity> page = this.selectPage(
                new Query<TransportEmsEntity>(params).getPage(),
                new EntityWrapper<TransportEmsEntity>()
        );

        return new PageUtils(page);
    }

}
