package me.zhengjie.modules.data.domain;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import java.io.Serializable;

/**
 * @author: ZhangHouYing
 * @date: 2020-03-13 23:13
 */
@MappedSuperclass
@Data
public class DataColumnKey implements Serializable {

	/** 元数据编号 */
	@Id
	@Column(name = "entity")
	private String entity;

	/** 字段名 */
	@Id
	@Column(name = "code")
	private String code;

}
