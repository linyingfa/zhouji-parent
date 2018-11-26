package com.zhouji.modules.transport.controller;

import java.util.Arrays;
import java.util.Map;

import com.zhouji.common.validator.ValidatorUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.zhouji.modules.transport.entity.TransportEmsEntity;
import com.zhouji.modules.transport.service.TransportEmsService;
import com.zhouji.common.utils.PageUtils;
import com.zhouji.common.utils.R;



/**
 * 物流公司表
 *
 * @author linyingfa
 * @email 530810890@qq.com
 * @date 2018-11-26 22:43:44
 */
@RestController
@RequestMapping("transport/transportems")
public class TransportEmsController {
    @Autowired
    private TransportEmsService transportEmsService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("transport:transportems:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = transportEmsService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{emsId}")
    @RequiresPermissions("transport:transportems:info")
    public R info(@PathVariable("emsId") Integer emsId){
        TransportEmsEntity transportEms = transportEmsService.selectById(emsId);

        return R.ok().put("transportEms", transportEms);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("transport:transportems:save")
    public R save(@RequestBody TransportEmsEntity transportEms){
        transportEmsService.insert(transportEms);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("transport:transportems:update")
    public R update(@RequestBody TransportEmsEntity transportEms){
        ValidatorUtils.validateEntity(transportEms);
        transportEmsService.updateAllColumnById(transportEms);//全部更新
        
        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("transport:transportems:delete")
    public R delete(@RequestBody Integer[] emsIds){
        transportEmsService.deleteBatchIds(Arrays.asList(emsIds));

        return R.ok();
    }

}
