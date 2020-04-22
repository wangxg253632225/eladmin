package me.zhengjie.modules.data.service.dto;

import lombok.Data;

import java.io.Serializable;

/**
* @author zhanghouying
* @date 2020-03-13
*/
@Data
public class DataColumnDto implements Serializable {

    /** 元数据编号 */
    private String entity;

    /** 字段名 */
    private String code;

    /** 中文名 */
    private String name;

    /** 数据类型 */
    private String dataType;

    /** 字段长度 */
    private Integer length;

    /** 字段精度 */
    private Integer scale;

    /** 是否主键 */
    private String isKey;

    /** 对象 */
    private String obj;

    /** 对象属性 */
    private String objProp;

    /** 数据粒度 */
    private String dataLevel;

    /** 是否是敏感字段 */
    private String isSensitive;

    /** 显示顺序 */
    private Integer sort;

    /** 权限字段 */
    private String isAuthority;

    /** 是否有效 */
    private String isValid;
}
