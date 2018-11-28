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

import com.zhouji.modules.transport.entity.TransportAddressManagementEntity;
import com.zhouji.modules.transport.service.TransportAddressManagementService;
import com.zhouji.common.utils.PageUtils;
import com.zhouji.common.utils.R;


/**
 * 地址管理表
 *
 * @author linyingfa
 * @email 530810890@qq.com
 * @date 2018-11-26 22:43:44
 */
@RestController
@RequestMapping("transport/transportaddressmanagement")
public class TransportAddressManagementController {
    @Autowired
    private TransportAddressManagementService transportAddressManagementService;

    /**
     * 列表
     * http://localhost:8081/transport/transportaddressmanagement/list
     */
    @RequestMapping("/list")
    @RequiresPermissions("transport:transportaddressmanagement:list")
    public R list(@RequestParam Map<String, Object> params) {
        PageUtils page = transportAddressManagementService.queryPage(params);
        return R.ok().put("page", page);
    }


    /**
     * 信息
     * http://localhost:8081/transport/transportaddressmanagement/info/1
     * rest 请求，参数直接拼接在尾部
     */
    @RequestMapping("/info/{senderId}")
    @RequiresPermissions("transport:transportaddressmanagement:info")
    public R info(@PathVariable("senderId") Integer senderId) {
        TransportAddressManagementEntity transportAddressManagement =
                transportAddressManagementService.selectById(senderId);
        return R.ok().put("transportAddressManagement", transportAddressManagement);
    }

/*    {
           "sender" :"lyf",
            "area": 3,
            "city": 2,
            "provinceId": 1,
            "address":"广东阳江",
            "postcode":"529943",
            "phone":"15112004467",
            "mobile":"15112004467",
            "isDefault":1
    }

    */
    /**
     * 保存
     *
     * @RequestBody http://localhost:8081/transport/transportaddressmanagement/save
     */
    @RequestMapping("/save")
    @RequiresPermissions("transport:transportaddressmanagement:save")
    public R save(@RequestBody TransportAddressManagementEntity transportAddressManagement) {
        transportAddressManagementService.insert(transportAddressManagement);
        return R.ok();
    }

    /**
     * 修改   http://localhost:8081/transport/transportaddressmanagement/update
     */
    @RequestMapping("/update")
    @RequiresPermissions("transport:transportaddressmanagement:update")
    public R update(@RequestBody TransportAddressManagementEntity transportAddressManagement) {
        ValidatorUtils.validateEntity(transportAddressManagement);
        transportAddressManagementService.updateById(transportAddressManagement);//全部更新
        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("transport:transportaddressmanagement:delete")
    public R delete(@RequestBody Integer[] senderIds) {
        transportAddressManagementService.deleteBatchIds(Arrays.asList(senderIds));
        return R.ok();
    }

}
