package com.zhouji.modules.transport.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;

import java.math.BigDecimal;
import java.io.Serializable;
import java.util.Date;

/**
 * 运费模板表
 *
 * @author linyingfa
 * @email 530810890@qq.com
 * @date 2018-11-27 20:24:08
 */
@TableName("transport_template")
public class TransportTemplateEntity implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 运费模板id
     */
    @TableId
    private Integer transportTemplateId;
    /**
     * 计价方式，1重量，2件数
     */
    private Integer payType;
    /**
     * 运送方式 , 1快递，2平邮，3EMS 4货运
     */
    private Integer transportType;
    /**
     * 说明
     */
    private String desc;
    /**
     * 创建人
     */
    private String createPerson ;
    /**
     * 创建时间
     */
    @JsonFormat(locale = "zh", timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;
    /**
     * 更新人
     */
    private String updatePerson;
    /**
     * 更新时间
     */
    @JsonFormat(locale = "zh", timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    private Date updateTime;
    /**
     * 删除标记，0不删除，1删除
     */
    private Integer delFlag;
    /**
     * 默认件数
     */
    private Integer defaultNumber;
    /**
     * 默认运费价格
     */
    private BigDecimal defaultPrice;
    /**
     * 增加件数
     */
    private Integer defaultAddNumber;
    /**
     * 增加的价格
     */
    private BigDecimal defaultAddPrice;
    /**
     * 模版名称
     */
    private String transportName;

    /**
     * 设置：运费模板id
     */
    public void setTransportTemplateId(Integer transportTemplateId) {
        this.transportTemplateId = transportTemplateId;
    }

    /**
     * 获取：运费模板id
     */
    public Integer getTransportTemplateId() {
        return transportTemplateId;
    }

    /**
     * 设置：计价方式，1重量，2件数
     */
    public void setPayType(Integer payType) {
        this.payType = payType;
    }

    /**
     * 获取：计价方式，1重量，2件数
     */
    public Integer getPayType() {
        return payType;
    }

    /**
     * 设置：运送方式 , 1快递，2平邮，3EMS 4货运
     */
    public void setTransportType(Integer transportType) {
        this.transportType = transportType;
    }

    /**
     * 获取：运送方式 , 1快递，2平邮，3EMS 4货运
     */
    public Integer getTransportType() {
        return transportType;
    }

    /**
     * 设置：说明
     */
    public void setDesc(String desc) {
        this.desc = desc;
    }

    /**
     * 获取：说明
     */
    public String getDesc() {
        return desc;
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
     * 设置：删除标记，0不删除，1删除
     */
    public void setDelFlag(Integer delFlag) {
        this.delFlag = delFlag;
    }

    /**
     * 获取：删除标记，0不删除，1删除
     */
    public Integer getDelFlag() {
        return delFlag;
    }

    /**
     * 设置：默认件数
     */
    public void setDefaultNumber(Integer defaultNumber) {
        this.defaultNumber = defaultNumber;
    }

    /**
     * 获取：默认件数
     */
    public Integer getDefaultNumber() {
        return defaultNumber;
    }

    /**
     * 设置：默认运费价格
     */
    public void setDefaultPrice(BigDecimal defaultPrice) {
        this.defaultPrice = defaultPrice;
    }

    /**
     * 获取：默认运费价格
     */
    public BigDecimal getDefaultPrice() {
        return defaultPrice;
    }

    /**
     * 设置：增加件数
     */
    public void setDefaultAddNumber(Integer defaultAddNumber) {
        this.defaultAddNumber = defaultAddNumber;
    }

    /**
     * 获取：增加件数
     */
    public Integer getDefaultAddNumber() {
        return defaultAddNumber;
    }

    /**
     * 设置：增加的价格
     */
    public void setDefaultAddPrice(BigDecimal defaultAddPrice) {
        this.defaultAddPrice = defaultAddPrice;
    }

    /**
     * 获取：增加的价格
     */
    public BigDecimal getDefaultAddPrice() {
        return defaultAddPrice;
    }

    /**
     * 设置：模版名称
     */
    public void setTransportName(String transportName) {
        this.transportName = transportName;
    }

    /**
     * 获取：模版名称
     */
    public String getTransportName() {
        return transportName;
    }
}
