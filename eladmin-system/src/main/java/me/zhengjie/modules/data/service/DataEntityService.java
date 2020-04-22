package me.zhengjie.modules.data.service;

import me.zhengjie.modules.data.domain.DataEntity;
import me.zhengjie.modules.data.domain.QueryParam;
import me.zhengjie.modules.data.service.dto.DataEntityDto;
import me.zhengjie.modules.data.service.dto.DataEntityQueryCriteria;
import me.zhengjie.modules.mnt.domain.Database;
import org.springframework.data.domain.Pageable;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/**
* @author zhanghouying
* @date 2020-03-13
*/
public interface DataEntityService {

    /**
    * 查询数据分页
    * @param criteria 条件
    * @param pageable 分页参数
    * @return Map<String,Object>
    */
    Map<String,Object> queryAll(DataEntityQueryCriteria criteria, Pageable pageable);

    /**
    * 查询所有数据不分页
    * @param criteria 条件参数
    * @return List<DataEntityDto>
    */
    List<DataEntityDto> queryAll(DataEntityQueryCriteria criteria);

    /**
     * 根据ID查询
     * @param id ID
     * @return DataEntityDto
     */
    DataEntityDto findById(String id);

    /**
    * 创建
    * @param resources /
    * @return DataEntityDto
    */
    DataEntityDto create(DataEntity resources);

    /**
    * 编辑
    * @param resources /
    */
    void update(DataEntity resources);

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
    void download(List<DataEntityDto> all, HttpServletResponse response) throws IOException;

	/**
	 * 同步元数据
	 * @param resources
	 */
	int syncDatabase(Database resources);

	Map<String,Object> queryData(QueryParam queryParam);
}
