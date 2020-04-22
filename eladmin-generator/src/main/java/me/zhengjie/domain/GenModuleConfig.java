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
* @author ZhangHouYing
* @date 2020-03-04
*/
@Entity
@Data
@Table(name="gen_module_config")
public class GenModuleConfig implements Serializable {

    /** 名称 */
    @Id
    @Column(name = "id")
    private String id;

    /** 描述 */
    @Column(name = "name")
    private String name;

    /** 类型 */
    @Column(name = "type")
    private String type;

    /** 内容 */
    @Column(name = "content")
    private String content;

    public void copy(GenModuleConfig source){
        BeanUtil.copyProperties(source,this, CopyOptions.create().setIgnoreNullValue(true));
    }
}
