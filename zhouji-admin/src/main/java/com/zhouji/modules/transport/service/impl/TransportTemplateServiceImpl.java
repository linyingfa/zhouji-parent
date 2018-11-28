package com.zhouji.modules.transport.service.impl;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.zhouji.common.request.TemplateExpand;
import com.zhouji.common.request.TransportTemplateSaveRequest;
import com.zhouji.common.utils.R;
import com.zhouji.modules.transport.entity.TransportTemplateExpandEntity;
import com.zhouji.modules.transport.service.TransportTemplateExpandService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
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

    /**
     * http://localhost:8081/transport/transporttemplate/list
     * <p>
     * http://localhost:8081/transport/transporttemplate/list?page=2
     * 查询，分页
     *
     * @param params
     * @return
     */
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
    }


    //    {
//            "defaultAddNumber": 2,
//            "defaultAddPrice": 23.4,
//            "defaultNumber": 1,
//            "defaultPrice": 12.3,
//            "desc": "首次222",
//            "payType ": 1,
//            "templateExpand": [
//        {
//            "addNumber": 3,
//                "addPrice": 3,
//                "area": 3,
//                "city": 2,
//                "firstNumber": 1,
//                "firstPrice": 12.333,
//                "provinceId": 1
//        },
//        {
//            "addNumber": 3,
//                "addPrice": 3,
//                "area": 3,
//                "city": 2,
//                "firstNumber": 1,
//                "firstPrice": 12.443,
//                "provinceId": 1
//        }
//    ],
//        "transportName": "便宜货",
//            "transportType": 1
//    }

    /**
     * 新增运费模版  add
     * http://localhost:8081/transport/transporttemplate/save
     *
     * @param request
     * @return
     */
    @Override
    public R insert(TransportTemplateSaveRequest request) {
        TransportTemplateEntity entity = new TransportTemplateEntity();
        BeanUtils.copyProperties(request, entity);
        this.insert(entity);//
        Integer transportTemplateId = entity.getTransportTemplateId();
        if (transportTemplateId != null) {
            //具体运送地址
            TransportTemplateExpandEntity expandEntity = new TransportTemplateExpandEntity();
            List<TemplateExpand> templateExpandList = request.getTemplateExpand();
            for (TemplateExpand t : templateExpandList) {
                BeanUtils.copyProperties(t, expandEntity);
                expandEntity.setTransportTemplateId(entity.getTransportTemplateId());
                transportTemplateExpandService.insert(expandEntity);
            }
            return R.ok();
        }
        return R.error();
    }

    /**
     * http://localhost:8081/transport/transporttemplate/delete?transportTemplateIds=8
     *
     * @param transportTemplateIds
     * @return
     */
    @Override
    public R delete(int transportTemplateIds) {
        if (transportTemplateIds > 0) {
            //删除关联表，拓展具体地址
            //根据数据库特定的字段来删除
            Map<String, Object> map = new HashMap<>();
            map.put("transport_template_id", transportTemplateIds);
            boolean isdelete = transportTemplateExpandService.deleteByMap(map);
            if (isdelete) {
                //删除模板
                boolean deleteTemplate = this.deleteById(transportTemplateIds);
                if (deleteTemplate) {
                    return R.ok("删除成功");
                }
            }
        }
        return R.error("参数错误");
    }


    /**
     * 查询，
     *
     * @param transportTemplateIds
     * @return
     */
    @Override
    public TransportTemplateSaveRequest selectOne(int transportTemplateIds) {
        if (transportTemplateIds > 0) {
            TransportTemplateSaveRequest saveRequest = new TransportTemplateSaveRequest();
            //查出运费模板
            TransportTemplateEntity templateEntity = this.selectById(transportTemplateIds);
            if (templateEntity == null) {
                return null;
            }
            BeanUtils.copyProperties(templateEntity, saveRequest);
            //根基运费模板查出对应的扩展数据
            EntityWrapper<TransportTemplateExpandEntity> expandEntityList = new EntityWrapper<>();
            expandEntityList.eq("transport_template_id", transportTemplateIds);
            List<TransportTemplateExpandEntity> templateExpandEntities = transportTemplateExpandService.selectList(expandEntityList);
            List<TemplateExpand> templateExpand = new ArrayList<>();
            for (TransportTemplateExpandEntity t : templateExpandEntities) {
                TemplateExpand templateExpand1 = new TemplateExpand();
                BeanUtils.copyProperties(t, templateExpand1);
                templateExpand.add(templateExpand1);
            }
            saveRequest.setTemplateExpand(templateExpand);
            return saveRequest;
        }
        return null;
    }

    @Override
    public R updateAllColumn(TransportTemplateSaveRequest request) {
        if (request == null) {
            return R.error();
        }
        //查出运费模板
        TransportTemplateEntity templateEntity = new TransportTemplateEntity();
        BeanUtils.copyProperties(request, templateEntity);
        boolean isUpdate = updateById(templateEntity);
        if (isUpdate) {
            List<TemplateExpand> templateExpand = request.getTemplateExpand();
            for (TemplateExpand t : templateExpand) {
                TransportTemplateExpandEntity transportTemplateExpandEntity = new TransportTemplateExpandEntity();
                BeanUtils.copyProperties(t, transportTemplateExpandEntity);
                //插入
                //transportTemplateExpandService.insertOrUpdate(transportTemplateExpandEntity);
                EntityWrapper<TransportTemplateExpandEntity> entityWrapper = new EntityWrapper<>();
                entityWrapper.eq("id", t.getId());
                transportTemplateExpandService.update(transportTemplateExpandEntity, entityWrapper);
            }
            return R.ok();
        }
        return R.error();
    }
}
