package me.zhengjie.service;

import me.zhengjie.domain.GenModuleConfig;
import me.zhengjie.service.dto.GenModuleConfigDto;
import me.zhengjie.service.dto.GenModuleConfigQueryCriteria;
import org.springframework.data.domain.Pageable;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/**
* @author ZhangHouYing
* @date 2020-03-04
*/
public interface GenModuleConfigService {

    /**
    * 查询数据分页
    * @param criteria 条件
    * @param pageable 分页参数
    * @return Map<String,Object>
    */
    Map<String,Object> queryAll(GenModuleConfigQueryCriteria criteria, Pageable pageable);

    /**
    * 查询所有数据不分页
    * @param criteria 条件参数
    * @return List<GenModuleConfigDto>
    */
    List<GenModuleConfigDto> queryAll(GenModuleConfigQueryCriteria criteria);

    /**
     * 根据ID查询
     * @param id ID
     * @return GenModuleConfigDto
     */
    GenModuleConfigDto findById(String id);

    /**
    * 创建
    * @param resources /
    * @return GenModuleConfigDto
    */
    GenModuleConfigDto create(GenModuleConfig resources);

    /**
    * 编辑
    * @param resources /
    */
    void update(GenModuleConfig resources);

    /**
    * 删除
    * @param id /
    */
    void delete(String id);

    /**
    * 多选删除
    * @param ids /
    */
    void deleteAll(String[] ids);

    /**
    * 导出数据
    * @param all 待导出的数据
    * @param response /
    * @throws IOException /
    */
    void download(List<GenModuleConfigDto> all, HttpServletResponse response) throws IOException;
}
