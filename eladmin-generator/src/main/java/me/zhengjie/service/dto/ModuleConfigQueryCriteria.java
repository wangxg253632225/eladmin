package me.zhengjie.service.dto;

import lombok.Data;
import me.zhengjie.annotation.Query;

/**
* @author ZhangHouYing
* @date 2020-03-04
*/
@Data
public class ModuleConfigQueryCriteria{

    /** 模糊 */
    @Query(type = Query.Type.INNER_LIKE)
    private String name;
}
