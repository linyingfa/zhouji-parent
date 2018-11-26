package com.zhouji.modules.transport.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

import java.io.Serializable;
import java.util.Date;

/**
 * 地址管理表
 * 
 * @author linyingfa
 * @email 530810890@qq.com
 * @date 2018-11-26 22:43:44
 */
@TableName("transport_address_management")
public class TransportAddressManagementEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 主键
	 */
	@TableId
	private Integer senderId;
	/**
	 * 发送人
	 */
	private String sender;
	/**
	 * 省份id
	 */
	private Integer provinceId;
	/**
	 * 城市id
	 */
	private Integer city;
	/**
	 * 区域id
	 */
	private Integer area;
	/**
	 * 详细地址
	 */
	private String address;
	/**
	 * 邮编
	 */
	private String postcode;
	/**
	 * 手机号码
	 */
	private String phone;
	/**
	 * 电话号码
	 */
	private String mobile;
	/**
	 * 是否默认地址，0否，1是
	 */
	private Integer isDefault;

	/**
	 * 设置：主键
	 */
	public void setSenderId(Integer senderId) {
		this.senderId = senderId;
	}
	/**
	 * 获取：主键
	 */
	public Integer getSenderId() {
		return senderId;
	}
	/**
	 * 设置：发送人
	 */
	public void setSender(String sender) {
		this.sender = sender;
	}
	/**
	 * 获取：发送人
	 */
	public String getSender() {
		return sender;
	}
	/**
	 * 设置：省份id
	 */
	public void setProvinceId(Integer provinceId) {
		this.provinceId = provinceId;
	}
	/**
	 * 获取：省份id
	 */
	public Integer getProvinceId() {
		return provinceId;
	}
	/**
	 * 设置：城市id
	 */
	public void setCity(Integer city) {
		this.city = city;
	}
	/**
	 * 获取：城市id
	 */
	public Integer getCity() {
		return city;
	}
	/**
	 * 设置：区域id
	 */
	public void setArea(Integer area) {
		this.area = area;
	}
	/**
	 * 获取：区域id
	 */
	public Integer getArea() {
		return area;
	}
	/**
	 * 设置：详细地址
	 */
	public void setAddress(String address) {
		this.address = address;
	}
	/**
	 * 获取：详细地址
	 */
	public String getAddress() {
		return address;
	}
	/**
	 * 设置：邮编
	 */
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	/**
	 * 获取：邮编
	 */
	public String getPostcode() {
		return postcode;
	}
	/**
	 * 设置：手机号码
	 */
	public void setPhone(String phone) {
		this.phone = phone;
	}
	/**
	 * 获取：手机号码
	 */
	public String getPhone() {
		return phone;
	}
	/**
	 * 设置：电话号码
	 */
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	/**
	 * 获取：电话号码
	 */
	public String getMobile() {
		return mobile;
	}
	/**
	 * 设置：是否默认地址，0否，1是
	 */
	public void setIsDefault(Integer isDefault) {
		this.isDefault = isDefault;
	}
	/**
	 * 获取：是否默认地址，0否，1是
	 */
	public Integer getIsDefault() {
		return isDefault;
	}
}
