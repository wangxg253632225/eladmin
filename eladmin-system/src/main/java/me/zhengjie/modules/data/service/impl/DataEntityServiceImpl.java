package me.zhengjie.modules.data.service.impl;

import me.zhengjie.modules.data.domain.Condition;
import me.zhengjie.modules.data.domain.DataColumn;
import me.zhengjie.modules.data.domain.DataEntity;
import me.zhengjie.modules.data.domain.QueryParam;
import me.zhengjie.modules.data.repository.DataColumnRepository;
import me.zhengjie.modules.data.repository.DataEntityRepository;
import me.zhengjie.modules.data.service.DataEntityService;
import me.zhengjie.modules.data.service.dto.DataEntityDto;
import me.zhengjie.modules.data.service.dto.DataEntityQueryCriteria;
import me.zhengjie.modules.data.service.mapper.DataEntityMapper;
import me.zhengjie.modules.mnt.domain.Database;
import me.zhengjie.modules.mnt.util.SqlUtils;
import me.zhengjie.utils.FileUtil;
import me.zhengjie.utils.PageUtil;
import me.zhengjie.utils.QueryHelp;
import me.zhengjie.utils.ValidationUtil;
import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.IdUtil;
import cn.hutool.core.util.StrUtil;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import lombok.extern.slf4j.Slf4j;
import org.hibernate.query.NativeQuery;
import org.hibernate.transform.Transformers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * @author zhanghouying
 * @date 2020-03-13
 */
@Service
@Slf4j
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class DataEntityServiceImpl implements DataEntityService {

	private final DataEntityRepository dataEntityRepository;

	private final DataEntityMapper dataEntityMapper;

	private final DataColumnRepository dataColumnRepository;

	public DataEntityServiceImpl(DataEntityRepository dataEntityRepository, DataEntityMapper dataEntityMapper, DataColumnRepository dataColumnRepository) {
		this.dataEntityRepository = dataEntityRepository;
		this.dataEntityMapper = dataEntityMapper;
		this.dataColumnRepository = dataColumnRepository;
	}

	@Override
	public Map<String, Object> queryAll(DataEntityQueryCriteria criteria, Pageable pageable) {
		Page<DataEntity> page = dataEntityRepository.findAll((root, criteriaQuery, criteriaBuilder) -> {
			//封装or查询条件
			List<Predicate> listPermission = new ArrayList<>();
			Predicate predicatesPermission = criteriaBuilder.conjunction();
			if (criteria.getValue() != null) {
				String value = "%" + criteria.getValue() + "%";
				listPermission.add(criteriaBuilder.like(root.get("id"), value));
				listPermission.add(criteriaBuilder.equal(root.get("name"), value));
				Predicate[] predicatesPermissionArr = new Predicate[listPermission.size()];
				predicatesPermission = criteriaBuilder.or(listPermission.toArray(predicatesPermissionArr));
			}
			Predicate restriction = criteriaQuery.where(predicatesPermission).getRestriction();
			return restriction;
		}, pageable);
		return PageUtil.toPage(page.map(dataEntityMapper::toDto));
	}

	@Override
	public List<DataEntityDto> queryAll(DataEntityQueryCriteria criteria) {
		return dataEntityMapper.toDto(dataEntityRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root, criteria, criteriaBuilder)));
	}

	@Override
	public DataEntityDto findById(String id) {
		DataEntity dataEntity = dataEntityRepository.findById(id).orElseGet(DataEntity::new);
		ValidationUtil.isNull(dataEntity.getId(), "DataEntity", "id", id);
		return dataEntityMapper.toDto(dataEntity);
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public DataEntityDto create(DataEntity resources) {
		resources.setId(IdUtil.simpleUUID());
		return dataEntityMapper.toDto(dataEntityRepository.save(resources));
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public void update(DataEntity resources) {
		DataEntity dataEntity = dataEntityRepository.findById(resources.getId()).orElseGet(DataEntity::new);
		ValidationUtil.isNull(dataEntity.getId(), "DataEntity", "id", resources.getId());
		dataEntity.copy(resources);
		dataEntityRepository.save(dataEntity);
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public void delete(String id) {
		dataEntityRepository.deleteById(id);
		dataColumnRepository.deleteByEntityId(id);
	}

	@Override
	public void deleteAll(String[] ids) {
		for (String id : ids) {
			dataEntityRepository.deleteById(id);
		}
	}

	@Override
	public void download(List<DataEntityDto> all, HttpServletResponse response) throws IOException {
		List<Map<String, Object>> list = new ArrayList<>();
		for (DataEntityDto dataEntity : all) {
			Map<String, Object> map = new LinkedHashMap<>();
			map.put("中文名", dataEntity.getName());
			map.put("描述", dataEntity.getRemark());
			map.put("数据量", dataEntity.getDatasize());
			map.put("来源", dataEntity.getSource());
			list.add(map);
		}
		FileUtil.downloadExcel(list, response);
	}

	@Override
	public int syncDatabase(Database resources) {
		try {
			Connection connection = SqlUtils.getConnection(resources.getJdbcUrl(), resources.getUserName(), resources.getPwd());
			List<DataEntity> tableList = SqlUtils.getTables(connection);
			tableList.forEach(table -> {
				dataEntityRepository.save(table);
				List<DataColumn> columnList = SqlUtils.getColumnList(connection, table.getId());
				columnList.forEach(column -> {
					dataColumnRepository.save(column);
				});
			});
			return tableList.size();
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}
	}

	@Autowired
	private EntityManager em;

	@Override
	public Map<String, Object> queryData(QueryParam queryParam) {
		Map<String, Object> result = Maps.newHashMap();
		StringBuilder queryBuilder = new StringBuilder("select * from ");
		StringBuilder countBuilder = new StringBuilder("select count(1) from ");
		StringBuilder cndBuilder = new StringBuilder();
		cndBuilder.append(queryParam.getEntity()).append(" where 1=1 ");
		for (Condition condition : queryParam.getConditions()) {
			DataColumn dataColumn = condition.getDataColumn();
			String code = dataColumn.getCode();
			Object value = condition.getValue();
			String opt = condition.getOpt();
			cndBuilder.append(" and ");
			if ("notNull".equals(opt)) {
				cndBuilder.append(code).append(" is not null ");
			} else if ("like".equals(opt)) {
				cndBuilder.append(code).append(" like '%").append(value).append("%' ");
			} else if ("=".equals(opt) || ">".equals(opt) || ">=".equals(opt) || "<".equals(opt) || "<=".equals(opt) || "<>".equals(opt)) {
				cndBuilder.append(code).append(" ").append(opt).append(" ");
				if ("VARCHAR".equals(dataColumn.getDataType()) || "CHAR".equals(dataColumn.getDataType())) {
					cndBuilder.append("'").append(value).append("' ");
				} else {
					cndBuilder.append(value);
				}
			} else {
			}
		}
		countBuilder.append(cndBuilder.toString());
		//分页 排序
		if (!StrUtil.isEmpty(queryParam.getSort())) {
			cndBuilder.append(" order by ").append(queryParam.getSort()).append(" ");
		}
		cndBuilder.append(" limit ").append((queryParam.getPage() -1 ) * queryParam.getSize()).append(",").append(queryParam.getSize());
		Query query = em.createNativeQuery(queryBuilder.append(cndBuilder.toString()).toString());
		query.unwrap(NativeQuery.class).setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP);
		List<Map<String, Object>> resultList = query.getResultList();
		//将数据格式化
		formatData(resultList,queryParam.getEntity());
		result.put("dataList", resultList);
		Query count = em.createNativeQuery(countBuilder.toString());
		return PageUtil.toPage(resultList,count.getResultList().get(0));
	}

	/**
	 * 格式化数据，例如日期
	 * @param resultList
	 */
	private void formatData(List<Map<String, Object>> resultList,String entity){
		List<DataColumn> dataColumnList = dataColumnRepository.findAll(new Specification<DataColumn>() {
										 @Override
										 public Predicate toPredicate(Root<DataColumn> root, CriteriaQuery<?> criteriaQuery, CriteriaBuilder criteriaBuilder) {
											 List<Predicate> predicates = new ArrayList<>();
											 predicates.add(criteriaBuilder.equal(root.<String>get("entity"),entity));
											 return criteriaQuery.where(predicates.toArray(new Predicate[predicates.size()])).getRestriction();
										 }
									 });
		List<String> dateTimeList = Lists.newArrayList();
		for (DataColumn dataColumn : dataColumnList) {
			if ("DATETIME".equals(dataColumn.getDataType())) {
				dateTimeList.add(dataColumn.getCode());
			}
		}
		for (Map<String, Object> data : resultList) {
			for (String key : dateTimeList) {
				Object value = data.get(key);
				if (value != null) {
					data.put(key,DateUtil.formatDateTime((Timestamp) value));
				}
			}
		}
	}
}
