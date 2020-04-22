package me.zhengjie.service.dto;

import lombok.Data;

import java.io.Serializable;

/**
* @author ZhangHouYing
* @date 2020-03-04
*/
@Data
public class GenModuleConfigDto implements Serializable {

    /** 名称 */
    private String id;

    /** 描述 */
    private String name;

    /** 类型 */
    private String type;

    /** 内容 */
    private String content;
}
