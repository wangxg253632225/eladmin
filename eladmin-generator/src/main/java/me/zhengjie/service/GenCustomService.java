package me.zhengjie.service;

import me.zhengjie.domain.GenCustom;
import me.zhengjie.domain.vo.DelBody;
import me.zhengjie.domain.vo.QueryBody;
import me.zhengjie.service.dto.GenCustomDto;
import me.zhengjie.service.dto.GenCustomQueryCriteria;
import org.springframework.data.domain.Pageable;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/**
* @author Helitupos
* @date 2020-03-04
*/
public interface GenCustomService {

    /**
    * 查询数据分页
    * @param criteria 条件
    * @param pageable 分页参数
    * @return Map<String,Object>
    */
    Map<String,Object> queryAll(GenCustomQueryCriteria criteria, Pageable pageable);

    /**
    * 查询所有数据不分页
    * @param criteria 条件参数
    * @return List<GenCustomDto>
    */
    List<GenCustomDto> queryAll(GenCustomQueryCriteria criteria);

    /**
     * 根据ID查询
     * @param id ID
     * @return GenCustomDto
     */
    GenCustomDto findById(String id);

    /**
    * 创建
    * @param resources /
    * @return GenCustomDto
    */
    GenCustomDto create(GenCustom resources);

    /**
    * 编辑
    * @param resources /
    */
    void update(GenCustom resources);

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
    void download(List<GenCustomDto> all, HttpServletResponse response) throws IOException;

	/**
	 * 根据页面列配置信息，查询数据
	 * @param queryBody
	 */
	Map<String, Object>  queryData(QueryBody queryBody);

	/**
	 * 删除数据
	 * @param delBody
	 */
	void delData(DelBody delBody);
}
