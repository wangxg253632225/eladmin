package me.zhengjie.service.dto;

import lombok.Data;

import java.io.Serializable;

/**
* @author Helitupos
* @date 2020-03-04
*/
@Data
public class GenCustomDto implements Serializable {

    /** 定制名称 */
    private String id;

    /** 描述 */
    private String name;

    /** 内容 */
    private String content;

    /** 模板编号 */
    private String templateId;

    /** 页面参数 */
    private String params;

    /** 代码生成设置 */
    private String generateCfg;
}
