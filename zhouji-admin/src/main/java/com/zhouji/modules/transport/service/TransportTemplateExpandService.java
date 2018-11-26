package com.zhouji.modules.transport.service;

import com.baomidou.mybatisplus.service.IService;
import com.zhouji.common.utils.PageUtils;
import com.zhouji.modules.transport.entity.TransportTemplateExpandEntity;

import java.util.Map;

/**
 * 运费模板拓展表
 *
 * @author linyingfa
 * @email 530810890@qq.com
 * @date 2018-11-26 22:43:44
 */
public interface TransportTemplateExpandService extends IService<TransportTemplateExpandEntity> {

    PageUtils queryPage(Map<String, Object> params);
}

