package com.zhouji.modules.test.service;

import com.baomidou.mybatisplus.service.IService;
import com.zhouji.common.utils.PageUtils;
import com.zhouji.modules.test.entity.TestTestEntity;

import java.util.Map;

/**
 * 
 *
 * @author linyingfa
 * @email 530810890@qq.com
 * @date 2018-11-27 12:23:47
 */
public interface TestTestService extends IService<TestTestEntity> {

    PageUtils queryPage(Map<String, Object> params);
}

