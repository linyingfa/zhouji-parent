package com.zhouji.modules.transport.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

import java.io.Serializable;
import java.util.Date;

/**
 * 物流公司表
 * 
 * @author linyingfa
 * @email 530810890@qq.com
 * @date 2018-11-26 22:43:44
 */
@TableName("transport_ems")
public class TransportEmsEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId
	private Integer emsId;
	/**
	 * 快递公司名称
	 */
	private String emsName;
	/**
	 * 备注
	 */
	private String emsRemark;

	/**
	 * 设置：
	 */
	public void setEmsId(Integer emsId) {
		this.emsId = emsId;
	}
	/**
	 * 获取：
	 */
	public Integer getEmsId() {
		return emsId;
	}
	/**
	 * 设置：快递公司名称
	 */
	public void setEmsName(String emsName) {
		this.emsName = emsName;
	}
	/**
	 * 获取：快递公司名称
	 */
	public String getEmsName() {
		return emsName;
	}
	/**
	 * 设置：备注
	 */
	public void setEmsRemark(String emsRemark) {
		this.emsRemark = emsRemark;
	}
	/**
	 * 获取：备注
	 */
	public String getEmsRemark() {
		return emsRemark;
	}
}
