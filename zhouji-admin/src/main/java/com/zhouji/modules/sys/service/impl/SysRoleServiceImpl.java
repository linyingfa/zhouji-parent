/**
 * Copyright 2018 人人开源 http://www.renren.io
 * <p>
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy of
 * the License at
 * <p>
 * http://www.apache.org/licenses/LICENSE-2.0
 * <p>
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations under
 * the License.
 */

package com.zhouji.modules.sys.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.zhouji.annotation.DataFilter;
import com.zhouji.common.utils.Constant;
import com.zhouji.common.utils.PageUtils;
import com.zhouji.common.utils.Query;
import com.zhouji.modules.sys.dao.SysRoleDao;
import com.zhouji.modules.sys.entity.SysDeptEntity;
import com.zhouji.modules.sys.entity.SysRoleEntity;
import com.zhouji.modules.sys.service.*;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Arrays;
import java.util.Date;
import java.util.Map;


/**
 * 角色
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2016年9月18日 上午9:45:12
 */
@Service("sysRoleService")
public class SysRoleServiceImpl extends ServiceImpl<SysRoleDao, SysRoleEntity> implements SysRoleService {

    @Autowired
    private SysRoleMenuService sysRoleMenuService;
    @Autowired
    private SysRoleDeptService sysRoleDeptService;
    @Autowired
    private SysUserRoleService sysUserRoleService;
    @Autowired
    private SysDeptService sysDeptService;

    /**
     * 刷新和点击搜索查询，都是调用这个接口
     *
     * @param params
     * @return
     */
    @Override
    @DataFilter(subDept = true, user = false)
    public PageUtils queryPage(Map<String, Object> params) {
        String roleName = (String) params.get("roleName");
        //TODO Query 是一个泛型的LinkedHashMap，构造方法一个Map，把map所有的参数put进去LinkedHashMap
        // 分页查询 10 条姓名为‘张三’的用户记录
		/*	List<User> userList = userMapper.selectPage(
					new Page<User>(1, 10),
					new EntityWrapper<User>().eq("name", "张三")
			);*/
        //TODO 里面定义好了一页多少个，第几页等等参数
        Query<SysRoleEntity> query = new Query<SysRoleEntity>(params);
        Page<SysRoleEntity> pageQuery = query.getPage();
        //TODO 实体包装器，用于处理 sql 拼接，排序，实体参数查询等！
        EntityWrapper<SysRoleEntity> entityWrapper = new EntityWrapper<SysRoleEntity>();
        entityWrapper.like(StringUtils.isNotBlank(roleName), "role_name", roleName);
        entityWrapper.addFilterIfNeed(params.get(Constant.SQL_FILTER) != null, (String) params.get(Constant.SQL_FILTER));
        //根据page进行查询
        Page<SysRoleEntity> page = this.selectPage(pageQuery, entityWrapper);
        for (SysRoleEntity sysRoleEntity : page.getRecords()) {
            SysDeptEntity sysDeptEntity = sysDeptService.selectById(sysRoleEntity.getDeptId());
            if (sysDeptEntity != null) {
                sysRoleEntity.setDeptName(sysDeptEntity.getName());
            }
        }

        return new PageUtils(page);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void save(SysRoleEntity role) {
        role.setCreateTime(new Date());
        this.insert(role);

        //保存角色与菜单关系
        sysRoleMenuService.saveOrUpdate(role.getRoleId(), role.getMenuIdList());

        //保存角色与部门关系
        sysRoleDeptService.saveOrUpdate(role.getRoleId(), role.getDeptIdList());
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(SysRoleEntity role) {
        this.updateAllColumnById(role);

        //更新角色与菜单关系
        sysRoleMenuService.saveOrUpdate(role.getRoleId(), role.getMenuIdList());

        //保存角色与部门关系
        sysRoleDeptService.saveOrUpdate(role.getRoleId(), role.getDeptIdList());
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void deleteBatch(Long[] roleIds) {
        //删除角色
        this.deleteBatchIds(Arrays.asList(roleIds));

        //删除角色与菜单关联
        sysRoleMenuService.deleteBatch(roleIds);

        //删除角色与部门关联
        sysRoleDeptService.deleteBatch(roleIds);

        //删除角色与用户关联
        sysUserRoleService.deleteBatch(roleIds);
    }


}
