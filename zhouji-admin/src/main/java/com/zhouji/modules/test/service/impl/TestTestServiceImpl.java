package com.zhouji.modules.test.service.impl;

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
        Page<TestTestEntity> page = this.selectPage(
                new Query<TestTestEntity>(params).getPage(),
                new EntityWrapper<TestTestEntity>()
        );
        return new PageUtils(page);
    }

}
