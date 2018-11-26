package com.zhouji.modules.transport.service;

import com.baomidou.mybatisplus.service.IService;
import com.zhouji.common.utils.PageUtils;
import com.zhouji.modules.transport.entity.TransportAddressManagementEntity;

import java.util.Map;

/**
 * 地址管理表
 *
 * @author linyingfa
 * @email 530810890@qq.com
 * @date 2018-11-26 22:43:44
 */
public interface TransportAddressManagementService extends IService<TransportAddressManagementEntity> {

    PageUtils queryPage(Map<String, Object> params);
}

