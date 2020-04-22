package me.zhengjie.modules.data.service.dto;

import me.zhengjie.annotation.Query;
import lombok.Data;

/**
* @author zhanghouying
* @date 2020-03-13
*/
@Data
public class DataColumnQueryCriteria{

    /** 精确 */
    @Query
    private String entity;

    /** 模糊 */
    @Query(type = Query.Type.INNER_LIKE)
    private String code;

    /** 模糊 */
    @Query(type = Query.Type.INNER_LIKE)
    private String name;
}
