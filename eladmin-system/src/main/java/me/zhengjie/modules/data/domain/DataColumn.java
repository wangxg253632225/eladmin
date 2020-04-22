package me.zhengjie.modules.data.domain;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.bean.copier.CopyOptions;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.IdClass;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

/**
* @author zhanghouying
* @date 2020-03-13
*/
@Data
@Entity
@Table(name="data_column")
@IdClass(DataColumnKey.class)
public class DataColumn extends DataColumnKey {

    /** 中文名 */
    @Column(name = "name",nullable = false)
    @NotBlank
    private String name;

    /** 数据类型 */
    @Column(name = "data_type",nullable = false)
    @NotBlank
    private String dataType;

    /** 字段长度 */
    @Column(name = "length",nullable = false)
    @NotNull
    private Integer length;

    /** 字段精度 */
    @Column(name = "scale",nullable = false)
    @NotNull
    private Integer scale;

    /** 是否主键 */
    @Column(name = "is_key",nullable = false)
    @NotBlank
    private String isKey;

    /** 对象 */
    @Column(name = "obj")
    private String obj;

    /** 对象属性 */
    @Column(name = "obj_prop")
    private String objProp;

    /** 数据粒度 */
    @Column(name = "data_level")
    private String dataLevel;

    /** 是否是敏感字段 */
    @Column(name = "is_sensitive",nullable = false)
    @NotBlank
    private String isSensitive;

    /** 显示顺序 */
    @Column(name = "sort",nullable = false)
    @NotNull
    private Integer sort;

    /** 权限字段 */
    @Column(name = "is_authority",nullable = false)
    @NotBlank
    private String isAuthority;

    /** 是否有效 */
    @Column(name = "is_valid",nullable = false)
    @NotBlank
    private String isValid;

    public void copy(DataColumn source){
        BeanUtil.copyProperties(source,this, CopyOptions.create().setIgnoreNullValue(true));
    }
}
