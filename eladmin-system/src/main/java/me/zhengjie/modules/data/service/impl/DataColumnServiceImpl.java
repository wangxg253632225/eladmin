package me.zhengjie.modules.data.service.impl;

import me.zhengjie.modules.data.domain.DataColumn;
import me.zhengjie.modules.data.domain.DataColumnKey;
import me.zhengjie.modules.data.repository.DataColumnRepository;
import me.zhengjie.modules.data.service.DataColumnService;
import me.zhengjie.modules.data.service.dto.DataColumnDto;
import me.zhengjie.modules.data.service.dto.DataColumnQueryCriteria;
import me.zhengjie.modules.data.service.mapper.DataColumnMapper;
import me.zhengjie.utils.FileUtil;
import me.zhengjie.utils.PageUtil;
import me.zhengjie.utils.QueryHelp;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
* @author zhanghouying
* @date 2020-03-13
*/
@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class DataColumnServiceImpl implements DataColumnService {

    private final DataColumnRepository dataColumnRepository;

    private final DataColumnMapper dataColumnMapper;

    public DataColumnServiceImpl(DataColumnRepository dataColumnRepository, DataColumnMapper dataColumnMapper) {
        this.dataColumnRepository = dataColumnRepository;
        this.dataColumnMapper = dataColumnMapper;
    }

    @Override
    public Map<String,Object> queryAll(DataColumnQueryCriteria criteria, Pageable pageable){
        Page<DataColumn> page = dataColumnRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(dataColumnMapper::toDto));
    }

    @Override
    public List<DataColumnDto> queryAll(DataColumnQueryCriteria criteria){
        return dataColumnMapper.toDto(dataColumnRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    public DataColumnDto findById(DataColumnKey dataColumnKey) {
        DataColumn dataColumn = dataColumnRepository.findById(dataColumnKey).orElseGet(DataColumn::new);
        return dataColumnMapper.toDto(dataColumn);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public DataColumnDto create(DataColumn resources) {
        return dataColumnMapper.toDto(dataColumnRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(DataColumn resources) {
        dataColumnRepository.save(resources);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void delete(DataColumnKey dataColumnKey) {
        dataColumnRepository.deleteById(dataColumnKey);
    }

    @Override
    public void deleteAll(DataColumnKey[] ids) {
        for (DataColumnKey id : ids) {
            dataColumnRepository.deleteById(id);
        }
    }

    @Override
    public void download(List<DataColumnDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (DataColumnDto dataColumn : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("中文名", dataColumn.getName());
            map.put("数据类型", dataColumn.getDataType());
            map.put("字段长度", dataColumn.getLength());
            map.put("字段精度", dataColumn.getScale());
            map.put("是否主键", dataColumn.getIsKey());
            map.put("对象", dataColumn.getObj());
            map.put("对象属性", dataColumn.getObjProp());
            map.put("数据粒度", dataColumn.getDataLevel());
            map.put("是否是敏感字段", dataColumn.getIsSensitive());
            map.put("显示顺序", dataColumn.getSort());
            map.put("权限字段", dataColumn.getIsAuthority());
            map.put("是否有效", dataColumn.getIsValid());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}
