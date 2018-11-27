package com.zhouji.modules.transport.service.impl;

import com.zhouji.common.request.TransportTemplateSaveRequest;
import com.zhouji.common.utils.R;
import com.zhouji.modules.test.entity.TestTestEntity;
import com.zhouji.modules.transport.entity.TransportTemplateExpandEntity;
import com.zhouji.modules.transport.service.TransportTemplateExpandService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
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
public class TransportTemplateServiceImpl extends
        ServiceImpl<TransportTemplateDao, TransportTemplateEntity>
        implements TransportTemplateService {

    @Autowired
    private TransportTemplateExpandService transportTemplateExpandService;

    @Override
    public PageUtils queryPage(Map<String, Object> params) {

        String desc = (String) params.get("name");
//        desc = "1";
        //定义好Page
        Query<TransportTemplateEntity> entityQuery = new Query<>(params);
        Page<TransportTemplateEntity> pageQ = entityQuery.getPage();
        //sql 拼接，排序，实体参数查询等！ 。可能忘记了运费模板名字字段，先用描述来进行查找
        EntityWrapper<TransportTemplateEntity> entityWrapper = new EntityWrapper<>();
        entityWrapper.like(StringUtils.isNotBlank(desc), "transport_name", desc);
        Page<TransportTemplateEntity> page = this.selectPage(pageQ, entityWrapper);
        return new PageUtils(page);

//        Page<TransportTemplateEntity> page = this.selectPage(
//                new Query<TransportTemplateEntity>(params).getPage(),
//                new EntityWrapper<TransportTemplateEntity>()
//        );
//        return new PageUtils(page);
    }


    /**
      {
     "defaultAddNumber": 2,
     "defaultAddPrice": 23.4,
     "defaultNumber": 1,
     "defaultPrice": 12.3,
     "desc": "首次",
     "payType ": 1,
     "templateExpand": {
     "addNumber": 3,
     "addPrice": 3,
     "area": 3,
     "city": 2,
     "firstNumber": 1,
     "firstPrice": 12.3,
     "provinceId": 1
     },
     "transportName": "便宜货",
     "transportType": 1
     }
     */
    @Override
    public R insert(TransportTemplateSaveRequest request) {
        TransportTemplateEntity entity = new TransportTemplateEntity();
        BeanUtils.copyProperties(request, entity);
        insert(entity);//
        Integer transportTemplateId = entity.getTransportTemplateId();
        if (transportTemplateId != null) {
            TransportTemplateExpandEntity expandEntity = new TransportTemplateExpandEntity();
            BeanUtils.copyProperties(request.getTemplateExpand(), expandEntity);
            expandEntity.setTransportTemplateId(entity.getTransportTemplateId());
            transportTemplateExpandService.insert(expandEntity);
            return R.ok();
        }
        return R.error();

    }

}
