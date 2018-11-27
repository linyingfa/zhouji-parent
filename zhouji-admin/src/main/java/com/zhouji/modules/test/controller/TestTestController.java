package com.zhouji.modules.test.controller;

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

import com.zhouji.modules.test.entity.TestTestEntity;
import com.zhouji.modules.test.service.TestTestService;
import com.zhouji.common.utils.PageUtils;
import com.zhouji.common.utils.R;



/**
 * 
 *
 * @author linyingfa
 * @email 530810890@qq.com
 * @date 2018-11-27 12:23:47
 */
@RestController
@RequestMapping("test/testtest")
public class TestTestController {
    @Autowired
    private TestTestService testTestService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("test:testtest:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = testTestService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("test:testtest:info")
    public R info(@PathVariable("id") Integer id){
        TestTestEntity testTest = testTestService.selectById(id);
        return R.ok().put("testTest", testTest);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("test:testtest:save")
    public R save(@RequestBody TestTestEntity testTest){
        testTestService.insert(testTest);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("test:testtest:update")
    public R update(@RequestBody TestTestEntity testTest){
        ValidatorUtils.validateEntity(testTest);
        testTestService.updateAllColumnById(testTest);//全部更新
        
        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("test:testtest:delete")
    public R delete(@RequestBody Integer[] ids){
        testTestService.deleteBatchIds(Arrays.asList(ids));

        return R.ok();
    }

}
