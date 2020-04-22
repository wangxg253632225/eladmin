package me.zhengjie.domain.vo;

import lombok.Data;
import me.zhengjie.domain.ColumnInfo;

import java.util.List;

/**
 * @author: ZhangHouYing
 * @date: 2020-03-18 11:53
 */
@Data
public class QueryBody {
	List<ColumnInfo> columnInfos;
	int page;
	int size;
}
