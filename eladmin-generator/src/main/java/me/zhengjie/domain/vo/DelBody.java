package me.zhengjie.domain.vo;

import lombok.Data;

import java.util.List;
import java.util.Map;

/**
 * @author: ZhangHouYing
 * @date: 2020-03-19 13:25
 */
@Data
public class DelBody {
	QueryBody queryBody;
	List<Map<String,Object>> idList;
}
