package me.zhengjie.service.dto;

import lombok.Data;
import me.zhengjie.annotation.Query;

/**
* @author Helitupos
* @date 2020-03-04
*/
@Data
public class GenCustomQueryCriteria{

    /** 模糊 */
    @Query(type = Query.Type.INNER_LIKE)
    private String name;
}
