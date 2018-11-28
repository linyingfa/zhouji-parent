package com.zhouji.common.request;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;

/**
 * Created by xiaolin on 2018/11/27.
 */
@Data
public class TransportTemplateSaveRequest implements Serializable {

    //运输表id
    private Integer transportTemplateId;
    //计价方式，1重量，2件数
    private Integer payType;
    //运送方式 , 1快递，2平邮，3EMS 4货运
    private Integer transportType;
    //说明
    private String desc;
    //默认件数
    private Integer defaultNumber;
    //默认运费价格
    private BigDecimal defaultPrice;
    //增加件数
    private Integer defaultAddNumber;
    //增加的价格
    private BigDecimal defaultAddPrice;
    //模版名称
    private String transportName;
    //具体运送地址列表
    private List<TemplateExpand> templateExpand;


}
