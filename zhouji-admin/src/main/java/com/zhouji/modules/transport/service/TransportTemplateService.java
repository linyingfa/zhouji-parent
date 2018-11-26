package com.zhouji.modules.transport.service;

import com.baomidou.mybatisplus.service.IService;
import com.zhouji.common.utils.PageUtils;
import com.zhouji.modules.transport.entity.TransportTemplateEntity;

import java.util.Map;

/**
 * 运费模板表
 *
 * @author linyingfa
 * @email 530810890@qq.com
 * @date 2018-11-26 22:43:44
 */
public interface TransportTemplateService extends IService<TransportTemplateEntity> {

    PageUtils queryPage(Map<String, Object> params);



}

