package me.zhengjie.domain;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.bean.copier.CopyOptions;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

/**
* @author Helitupos
* @date 2020-03-04
*/
@Entity
@Data
@Table(name="gen_custom")
public class GenCustom implements Serializable {

    /** 定制名称 */
    @Id
    @Column(name = "id")
    private String id;

    /** 描述 */
    @Column(name = "name")
    private String name;

    /** 内容 */
    @Column(name = "content")
    private String content;

    /** 模板编号 */
    @Column(name = "template_id")
    private String templateId;

    /** 页面参数 */
    @Column(name = "params")
    private String params;

    /** 代码生成设置 */
    @Column(name = "generate_cfg")
    private String generateCfg;

    public void copy(GenCustom source){
        BeanUtil.copyProperties(source,this, CopyOptions.create().setIgnoreNullValue(true));
    }
}
