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

import com.zhouji.modules.transport.entity.TransportTemplateEntity;
import com.zhouji.modules.transport.service.TransportTemplateService;
import com.zhouji.common.utils.PageUtils;
import com.zhouji.common.utils.R;



/**
 * 运费模板表
 *
 * @author linyingfa
 * @email 530810890@qq.com
 * @date 2018-11-26 22:43:44
 */
@RestController
@RequestMapping("transport/transporttemplate")
public class TransportTemplateController {
    @Autowired
    private TransportTemplateService transportTemplateService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("transport:transporttemplate:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = transportTemplateService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{transportTemplateId}")
    @RequiresPermissions("transport:transporttemplate:info")
    public R info(@PathVariable("transportTemplateId") Integer transportTemplateId){
        TransportTemplateEntity transportTemplate = transportTemplateService.selectById(transportTemplateId);

        return R.ok().put("transportTemplate", transportTemplate);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("transport:transporttemplate:save")
    public R save(@RequestBody TransportTemplateEntity transportTemplate){
        transportTemplateService.insert(transportTemplate);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("transport:transporttemplate:update")
    public R update(@RequestBody TransportTemplateEntity transportTemplate){
        ValidatorUtils.validateEntity(transportTemplate);
        transportTemplateService.updateAllColumnById(transportTemplate);//全部更新
        
        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("transport:transporttemplate:delete")
    public R delete(@RequestBody Integer[] transportTemplateIds){
        transportTemplateService.deleteBatchIds(Arrays.asList(transportTemplateIds));

        return R.ok();
    }

}
