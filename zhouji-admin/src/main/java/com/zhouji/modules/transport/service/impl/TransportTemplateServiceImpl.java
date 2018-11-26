package com.zhouji.modules.transport.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.zhouji.common.utils.PageUtils;
import com.zhouji.common.utils.Query;

import com.zhouji.modules.transport.dao.TransportTemplateDao;
import com.zhouji.modules.transport.entity.TransportTemplateEntity;
import com.zhouji.modules.transport.service.TransportTemplateService;


@Service("transportTemplateService")
public class TransportTemplateServiceImpl extends ServiceImpl<TransportTemplateDao, TransportTemplateEntity> implements TransportTemplateService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<TransportTemplateEntity> page = this.selectPage(
                new Query<TransportTemplateEntity>(params).getPage(),
                new EntityWrapper<TransportTemplateEntity>()
        );

        return new PageUtils(page);
    }

}
