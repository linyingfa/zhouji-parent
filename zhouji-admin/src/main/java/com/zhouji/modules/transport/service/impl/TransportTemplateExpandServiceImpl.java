package com.zhouji.modules.transport.service.impl;

import com.zhouji.common.request.TemplateExpand;
import com.zhouji.common.utils.R;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import java.util.Map;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.zhouji.common.utils.PageUtils;
import com.zhouji.common.utils.Query;

import com.zhouji.modules.transport.dao.TransportTemplateExpandDao;
import com.zhouji.modules.transport.entity.TransportTemplateExpandEntity;
import com.zhouji.modules.transport.service.TransportTemplateExpandService;


@Service("transportTemplateExpandService")
public class TransportTemplateExpandServiceImpl extends ServiceImpl<TransportTemplateExpandDao,
        TransportTemplateExpandEntity> implements TransportTemplateExpandService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<TransportTemplateExpandEntity> page = this.selectPage(
                new Query<TransportTemplateExpandEntity>(params).getPage(),
                new EntityWrapper<TransportTemplateExpandEntity>()
        );
        return new PageUtils(page);
    }

    @Override
    public R delete(int id) {
        boolean isdelete = deleteById(id);
        if (isdelete) {
            return R.ok();
        } else {
            return R.error();
        }

    }

    @Override
    public R update(TemplateExpand templateExpand) {
        TransportTemplateExpandEntity entity = new TransportTemplateExpandEntity();
        BeanUtils.copyProperties(templateExpand, entity);
        boolean up = updateAllColumnById(entity);
        if (up) {
            return R.ok();
        } else {
            return R.error();
        }
    }

}
