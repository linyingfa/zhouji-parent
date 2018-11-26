package com.zhouji.modules.transport.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

import java.math.BigDecimal;
import java.io.Serializable;
import java.util.Date;

/**
 * 运费模板拓展表
 * 
 * @author linyingfa
 * @email 530810890@qq.com
 * @date 2018-11-26 22:43:44
 */
@TableName("transport_template_expand")
public class TransportTemplateExpandEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 主键
	 */
	@TableId
	private Integer id;
	/**
	 * 运输表id
	 */
	private Integer transportTemplateId;
	/**
	 * 省id
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
	 * 首件
	 */
	private Integer firstNumber;
	/**
	 * 首次价格
	 */
	private BigDecimal firstPrice;
	/**
	 * 增加件数
	 */
	private Integer addNumber;
	/**
	 * 增加价格
	 */
	private BigDecimal addPrice;
	/**
	 * 创建人
	 */
	private String createPerson;
	/**
	 * 创建时间
	 */
	private Date createTime;
	/**
	 * 更新人
	 */
	private String updatePerson;
	/**
	 * 更新时间
	 */
	private Date updateTime;
	/**
	 * 删除表标记，0不删除，1删除
	 */
	private Integer delFlag;

	/**
	 * 设置：主键
	 */
	public void setId(Integer id) {
		this.id = id;
	}
	/**
	 * 获取：主键
	 */
	public Integer getId() {
		return id;
	}
	/**
	 * 设置：运输表id
	 */
	public void setTransportTemplateId(Integer transportTemplateId) {
		this.transportTemplateId = transportTemplateId;
	}
	/**
	 * 获取：运输表id
	 */
	public Integer getTransportTemplateId() {
		return transportTemplateId;
	}
	/**
	 * 设置：省id
	 */
	public void setProvinceId(Integer provinceId) {
		this.provinceId = provinceId;
	}
	/**
	 * 获取：省id
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
	 * 设置：首件
	 */
	public void setFirstNumber(Integer firstNumber) {
		this.firstNumber = firstNumber;
	}
	/**
	 * 获取：首件
	 */
	public Integer getFirstNumber() {
		return firstNumber;
	}
	/**
	 * 设置：首次价格
	 */
	public void setFirstPrice(BigDecimal firstPrice) {
		this.firstPrice = firstPrice;
	}
	/**
	 * 获取：首次价格
	 */
	public BigDecimal getFirstPrice() {
		return firstPrice;
	}
	/**
	 * 设置：增加件数
	 */
	public void setAddNumber(Integer addNumber) {
		this.addNumber = addNumber;
	}
	/**
	 * 获取：增加件数
	 */
	public Integer getAddNumber() {
		return addNumber;
	}
	/**
	 * 设置：增加价格
	 */
	public void setAddPrice(BigDecimal addPrice) {
		this.addPrice = addPrice;
	}
	/**
	 * 获取：增加价格
	 */
	public BigDecimal getAddPrice() {
		return addPrice;
	}
	/**
	 * 设置：创建人
	 */
	public void setCreatePerson(String createPerson) {
		this.createPerson = createPerson;
	}
	/**
	 * 获取：创建人
	 */
	public String getCreatePerson() {
		return createPerson;
	}
	/**
	 * 设置：创建时间
	 */
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	/**
	 * 获取：创建时间
	 */
	public Date getCreateTime() {
		return createTime;
	}
	/**
	 * 设置：更新人
	 */
	public void setUpdatePerson(String updatePerson) {
		this.updatePerson = updatePerson;
	}
	/**
	 * 获取：更新人
	 */
	public String getUpdatePerson() {
		return updatePerson;
	}
	/**
	 * 设置：更新时间
	 */
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	/**
	 * 获取：更新时间
	 */
	public Date getUpdateTime() {
		return updateTime;
	}
	/**
	 * 设置：删除表标记，0不删除，1删除
	 */
	public void setDelFlag(Integer delFlag) {
		this.delFlag = delFlag;
	}
	/**
	 * 获取：删除表标记，0不删除，1删除
	 */
	public Integer getDelFlag() {
		return delFlag;
	}
}
