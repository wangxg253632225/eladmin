package me.zhengjie.modules.data.service.dto;

import lombok.Data;

import java.io.Serializable;

/**
* @author zhanghouying
* @date 2020-03-13
*/
@Data
public class DataEntityDto implements Serializable {

    /** 表名 */
    private String id;

    /** 中文名 */
    private String name;

    /** 描述 */
    private String remark;

    /** 数据量 */
    private Integer datasize;

	/** 来源 */
	private String source;

	/** 显示顺序 */
	private int sort;
}
