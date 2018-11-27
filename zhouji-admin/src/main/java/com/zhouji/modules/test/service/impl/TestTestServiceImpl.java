package com.zhouji.modules.test.service.impl;

import com.zhouji.modules.transport.entity.TransportTemplateEntity;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

import java.util.Map;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.zhouji.common.utils.PageUtils;
import com.zhouji.common.utils.Query;

import com.zhouji.modules.test.dao.TestTestDao;
import com.zhouji.modules.test.entity.TestTestEntity;
import com.zhouji.modules.test.service.TestTestService;


@Service("testTestService")
public class TestTestServiceImpl extends ServiceImpl<TestTestDao, TestTestEntity> implements TestTestService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {

        //public Page<T> selectPage(Page<T> page, Wrapper<T> wrapper)
//        Page<TestTestEntity> page = this.selectPage(
//                new Query<TestTestEntity>(params).getPage(),
//                new EntityWrapper<TestTestEntity>()
//        );
//        return new PageUtils(page);
        String desc = (String) params.get("name");
//        desc = "1";
        //定义好Page
        Query<TestTestEntity> entityQuery = new Query<>(params);
        Page<TestTestEntity> pageQ = entityQuery.getPage();
        //sql 拼接，排序，实体参数查询等！ 。可能忘记了运费模板名字字段，先用描述来进行查找
        EntityWrapper<TestTestEntity> entityWrapper = new EntityWrapper<>();
        entityWrapper.like(StringUtils.isNotBlank(desc), "name", desc);
        Page<TestTestEntity> page = this.selectPage(pageQ, entityWrapper);
        return new PageUtils(page);
    }

}
