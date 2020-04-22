package me.zhengjie.modules.data.domain;

import lombok.Data;
/**
 * @author: ZhangHouYing
 * @date: 2020-03-13 14:35
 */
@Data
public class Condition {

	DataColumn dataColumn;
	String opt;
	Object value;

}
