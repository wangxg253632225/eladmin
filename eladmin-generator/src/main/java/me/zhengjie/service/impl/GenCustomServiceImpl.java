package me.zhengjie.service.impl;

import cn.hutool.core.util.IdUtil;
import com.google.common.collect.Maps;
import me.zhengjie.domain.ColumnInfo;
import me.zhengjie.domain.GenCustom;
import me.zhengjie.domain.vo.DelBody;
import me.zhengjie.domain.vo.QueryBody;
import me.zhengjie.repository.GenCustomRepository;
import me.zhengjie.service.GenCustomService;
import me.zhengjie.service.dto.GenCustomDto;
import me.zhengjie.service.dto.GenCustomQueryCriteria;
import me.zhengjie.service.mapper.GenCustomMapper;
import me.zhengjie.utils.FileUtil;
import me.zhengjie.utils.PageUtil;
import me.zhengjie.utils.QueryHelp;
import me.zhengjie.utils.ValidationUtil;
import org.hibernate.query.NativeQuery;
import org.hibernate.transform.Transformers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
* @author Helitupos
* @date 2020-03-04
*/
@Service
@CacheConfig(cacheNames = "genCustom")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class GenCustomServiceImpl implements GenCustomService {

    private final GenCustomRepository genCustomRepository;

    private final GenCustomMapper genCustomMapper;

	@Autowired
	private EntityManager em;

    public GenCustomServiceImpl(GenCustomRepository genCustomRepository, GenCustomMapper genCustomMapper) {
        this.genCustomRepository = genCustomRepository;
        this.genCustomMapper = genCustomMapper;
    }

    @Override
    @Cacheable
    public Map<String,Object> queryAll(GenCustomQueryCriteria criteria, Pageable pageable){
        Page<GenCustom> page = genCustomRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(genCustomMapper::toDto));
    }

    @Override
    @Cacheable
    public List<GenCustomDto> queryAll(GenCustomQueryCriteria criteria){
        return genCustomMapper.toDto(genCustomRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Cacheable(key = "#p0")
    public GenCustomDto findById(String id) {
        GenCustom genCustom = genCustomRepository.findById(id).orElseGet(GenCustom::new);
        ValidationUtil.isNull(genCustom.getId(),"GenCustom","id",id);
        return genCustomMapper.toDto(genCustom);
    }

    @Override
    @CacheEvict(allEntries = true)
    @Transactional(rollbackFor = Exception.class)
    public GenCustomDto create(GenCustom resources) {
		if (resources.getId() == null) {
			resources.setId(IdUtil.fastSimpleUUID());
		}
        return genCustomMapper.toDto(genCustomRepository.save(resources));
    }

    @Override
    @CacheEvict(allEntries = true)
    @Transactional(rollbackFor = Exception.class)
    public void update(GenCustom resources) {
        GenCustom genCustom = genCustomRepository.findById(resources.getId()).orElseGet(GenCustom::new);
        ValidationUtil.isNull( genCustom.getId(),"GenCustom","id",resources.getId());
        genCustom.copy(resources);
        genCustomRepository.save(genCustom);
    }

    @Override
    @CacheEvict(allEntries = true)
    @Transactional(rollbackFor = Exception.class)
    public void delete(String id) {
        genCustomRepository.deleteById(id);
    }

    @Override
    @CacheEvict(allEntries = true)
    public void deleteAll(String[] ids) {
        for (String id : ids) {
            genCustomRepository.deleteById(id);
        }
    }

    @Override
    public void download(List<GenCustomDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (GenCustomDto genCustom : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("描述", genCustom.getName());
            map.put("内容", genCustom.getContent());
            map.put("模板编号", genCustom.getTemplateId());
            map.put("页面参数", genCustom.getParams());
            map.put("代码生成设置", genCustom.getGenerateCfg());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }

	@Override
	public Map<String, Object> queryData(QueryBody queryBody) {
		List<ColumnInfo> columnInfos = queryBody.getColumnInfos();
		if (columnInfos.size() > 0) {
			ColumnInfo columnInfo = columnInfos.get(0);
			Map<String, Object> result = Maps.newHashMap();
			StringBuilder queryBuilder = new StringBuilder("select * from ");
			StringBuilder countBuilder = new StringBuilder("select count(1) from ");
			StringBuilder cndBuilder = new StringBuilder();
			cndBuilder.append(columnInfo.getTableName()).append(" where 1=1 ");
			countBuilder.append(columnInfo.getTableName()).append(" where 1=1 ");

			int page = queryBody.getPage();
			int size = queryBody.getSize();
			cndBuilder.append(" limit ").append((page -1 ) * size).append(",").append(size);

			Query query = em.createNativeQuery(queryBuilder.append(cndBuilder.toString()).toString());
			query.unwrap(NativeQuery.class).setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP);
			List<Map<String, Object>> resultList = query.getResultList();
			result.put("dataList", resultList);
			Query count = em.createNativeQuery(countBuilder.toString());
			return PageUtil.toPage(resultList,count.getResultList().get(0));
		}
		return null;
	}



	@Override
	@Transactional
	public void delData(DelBody delBody) {
		QueryBody queryBody = delBody.getQueryBody();
		List<ColumnInfo> columnInfos = queryBody.getColumnInfos();
		if (columnInfos.size() == 0) {
			return;
		}
		String tableName = columnInfos.get(0).getTableName();
		List<Map<String, Object>> idList = delBody.getIdList();
		for (Map<String, Object> id : idList) {
			StringBuilder sqlBuilder = new StringBuilder("delete from ");
			sqlBuilder.append(tableName).append(" where ");
			int index = 0;
			for (String key : id.keySet()) {
				for (ColumnInfo columnInfo : columnInfos) {
					if (key.equals(columnInfo.getColumnName())) {
						if (index++ > 0) {
							sqlBuilder.append(" and ");
						}
						sqlBuilder.append(key).append(" = ");
						if ("int".equals(columnInfo.getColumnType()) || "long".equals(columnInfo.getColumnType())) {
							sqlBuilder.append(id.get(key));
						}else{
							sqlBuilder.append("'").append(id.get(key)).append("' ");
						}
					}
				}
			}
			Query query = em.createNativeQuery(sqlBuilder.toString());
			query.executeUpdate();
		}

	}
}
