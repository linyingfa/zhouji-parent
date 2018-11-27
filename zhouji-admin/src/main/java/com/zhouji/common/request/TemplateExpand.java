package com.zhouji.common.request;

import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * Created by xiaolin on 2018/11/27.
 */
@Data
public class TemplateExpand implements Serializable {

    //运输表id
    private Integer transportTemplateId;
    //省id
    private Integer provinceId;
    //城市id
    private Integer city;
    //区域id
    private Integer area;
    // 首件
    private Integer firstNumber;
    //首次价格
    private BigDecimal firstPrice;
    //增加件数
    private Integer addNumber;
    //增加价格
    private BigDecimal addPrice;
}
