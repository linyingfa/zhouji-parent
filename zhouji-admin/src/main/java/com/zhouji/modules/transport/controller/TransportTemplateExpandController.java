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

import com.zhouji.modules.transport.entity.TransportTemplateExpandEntity;
import com.zhouji.modules.transport.service.TransportTemplateExpandService;
import com.zhouji.common.utils.PageUtils;
import com.zhouji.common.utils.R;



/**
 * 运费模板拓展表
 *
 * @author linyingfa
 * @email 530810890@qq.com
 * @date 2018-11-26 22:43:44
 */
@RestController
@RequestMapping("transport/transporttemplateexpand")
public class TransportTemplateExpandController {
    @Autowired
    private TransportTemplateExpandService transportTemplateExpandService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("transport:transporttemplateexpand:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = transportTemplateExpandService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("transport:transporttemplateexpand:info")
    public R info(@PathVariable("id") Integer id){
        TransportTemplateExpandEntity transportTemplateExpand = transportTemplateExpandService.selectById(id);

        return R.ok().put("transportTemplateExpand", transportTemplateExpand);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("transport:transporttemplateexpand:save")
    public R save(@RequestBody TransportTemplateExpandEntity transportTemplateExpand){
        transportTemplateExpandService.insert(transportTemplateExpand);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("transport:transporttemplateexpand:update")
    public R update(@RequestBody TransportTemplateExpandEntity transportTemplateExpand){
        ValidatorUtils.validateEntity(transportTemplateExpand);
        transportTemplateExpandService.updateAllColumnById(transportTemplateExpand);//全部更新
        
        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("transport:transporttemplateexpand:delete")
    public R delete(@RequestBody Integer[] ids){
        transportTemplateExpandService.deleteBatchIds(Arrays.asList(ids));

        return R.ok();
    }

}
