package com.zhouji.modules.transport.service.impl;

import org.apache.commons.lang.StringUtils;
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
        String desc = (String) params.get("desc");
        //定义好Page
        Query<TransportTemplateEntity> entityQuery = new Query<TransportTemplateEntity>(params);
        Page<TransportTemplateEntity> pageQ = entityQuery.getPage();
        //sql 拼接，排序，实体参数查询等！ 。可能忘记了运费模板名字字段，先用描述来进行查找
        EntityWrapper<TransportTemplateEntity> entityWrapper = new EntityWrapper<TransportTemplateEntity>();
        entityWrapper.like(StringUtils.isNotBlank(desc), "desc", desc);
        Page<TransportTemplateEntity> page = this.selectPage(pageQ, entityWrapper);
        return new PageUtils(page);
    }

}
