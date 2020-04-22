package me.zhengjie.modules.data.service;

import me.zhengjie.modules.data.domain.DataColumn;
import me.zhengjie.modules.data.domain.DataColumnKey;
import me.zhengjie.modules.data.service.dto.DataColumnDto;
import me.zhengjie.modules.data.service.dto.DataColumnQueryCriteria;
import org.springframework.data.domain.Pageable;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/**
* @author zhanghouying
* @date 2020-03-13
*/
public interface DataColumnService {

    /**
    * 查询数据分页
    * @param criteria 条件
    * @param pageable 分页参数
    * @return Map<String,Object>
    */
    Map<String,Object> queryAll(DataColumnQueryCriteria criteria, Pageable pageable);

    /**
    * 查询所有数据不分页
    * @param criteria 条件参数
    * @return List<DataColumnDto>
    */
    List<DataColumnDto> queryAll(DataColumnQueryCriteria criteria);

    /**
     * 根据ID查询
     * @param dataColumnKey
     * @return DataColumnDto
     */
    DataColumnDto findById(DataColumnKey dataColumnKey);

    /**
    * 创建
    * @param resources /
    * @return DataColumnDto
    */
    DataColumnDto create(DataColumn resources);

    /**
    * 编辑
    * @param resources /
    */
    void update(DataColumn resources);

    /**
    * 删除
    * @param dataColumnKey /
    */
    void delete(DataColumnKey dataColumnKey);

    /**
    * 多选删除
    * @param ids /
    */
    void deleteAll(DataColumnKey[] ids);

    /**
    * 导出数据
    * @param all 待导出的数据
    * @param response /
    * @throws IOException /
    */
    void download(List<DataColumnDto> all, HttpServletResponse response) throws IOException;
}
