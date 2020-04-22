package me.zhengjie.modules.data.domain;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.bean.copier.CopyOptions;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.io.Serializable;

/**
* @author zhanghouying
* @date 2020-03-13
*/
@Entity
@Data
@Table(name="data_entity")
public class DataEntity implements Serializable {

    /** 表名 */
    @Id
    @Column(name = "id")
    private String id;

    /** 中文名 */
    @Column(name = "name",nullable = false)
    @NotBlank
    private String name;

    /** 描述 */
    @Column(name = "remark")
    private String remark;

    /** 数据量 */
    @Column(name = "datasize")
    private Integer datasize;

    /** 来源 */
    @Column(name = "source")
    private String source;

	/** 显示顺序 */
	@Column(name = "sort",nullable = false)
	@NotNull
	private Integer sort;

    public void copy(DataEntity source){
        BeanUtil.copyProperties(source,this, CopyOptions.create().setIgnoreNullValue(true));
    }
}
