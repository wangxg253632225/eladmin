package me.zhengjie.modules.data.domain;

import lombok.Data;

import java.util.List;
/**
 * @author: ZhangHouYing
 * @date: 2020-03-13 10:53
 */
@Data
public class QueryParam {
	private String entity;
	private String sort;
	private int page;
	private int size;
	private List<Condition> conditions;
}
