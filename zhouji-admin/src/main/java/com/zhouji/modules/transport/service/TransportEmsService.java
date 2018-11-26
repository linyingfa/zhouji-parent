package com.zhouji.modules.transport.service;

import com.baomidou.mybatisplus.service.IService;
import com.zhouji.common.utils.PageUtils;
import com.zhouji.modules.transport.entity.TransportEmsEntity;

import java.util.Map;

/**
 * 物流公司表
 *
 * @author linyingfa
 * @email 530810890@qq.com
 * @date 2018-11-26 22:43:44
 */
public interface TransportEmsService extends IService<TransportEmsEntity> {

    PageUtils queryPage(Map<String, Object> params);
}

