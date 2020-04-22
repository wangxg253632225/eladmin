package me.zhengjie.domain.vo;

import lombok.Data;
import me.zhengjie.domain.ColumnInfo;

import java.util.List;

/**
 * @author: ZhangHouYing
 * @date: 2020-03-25 15:26
 */
@Data
public class GenerateConfig {
	List<ColumnInfo> columns;
	String pack;
}
