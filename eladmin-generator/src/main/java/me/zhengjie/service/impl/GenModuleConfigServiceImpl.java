package me.zhengjie.service.impl;

import cn.hutool.core.util.IdUtil;
import me.zhengjie.domain.GenModuleConfig;
import me.zhengjie.repository.GenModuleConfigRepository;
import me.zhengjie.service.GenModuleConfigService;
import me.zhengjie.service.dto.GenModuleConfigDto;
import me.zhengjie.service.dto.GenModuleConfigQueryCriteria;
import me.zhengjie.service.mapper.GenModuleConfigMapper;
import me.zhengjie.utils.FileUtil;
import me.zhengjie.utils.PageUtil;
import me.zhengjie.utils.QueryHelp;
import me.zhengjie.utils.ValidationUtil;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
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
* @author ZhangHouYing
* @date 2020-03-04
*/
@Service
@CacheConfig(cacheNames = "genModuleConfig")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class GenModuleConfigServiceImpl implements GenModuleConfigService {

    private final GenModuleConfigRepository genModuleConfigRepository;

    private final GenModuleConfigMapper genModuleConfigMapper;

    public GenModuleConfigServiceImpl(GenModuleConfigRepository genModuleConfigRepository, GenModuleConfigMapper genModuleConfigMapper) {
        this.genModuleConfigRepository = genModuleConfigRepository;
        this.genModuleConfigMapper = genModuleConfigMapper;
    }

    @Override
    @Cacheable
    public Map<String,Object> queryAll(GenModuleConfigQueryCriteria criteria, Pageable pageable){
        Page<GenModuleConfig> page = genModuleConfigRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(genModuleConfigMapper::toDto));
    }

    @Override
    @Cacheable
    public List<GenModuleConfigDto> queryAll(GenModuleConfigQueryCriteria criteria){
        return genModuleConfigMapper.toDto(genModuleConfigRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Cacheable(key = "#p0")
    public GenModuleConfigDto findById(String id) {
        GenModuleConfig genModuleConfig = genModuleConfigRepository.findById(id).orElseGet(GenModuleConfig::new);
        ValidationUtil.isNull(genModuleConfig.getId(),"GenModuleConfig","id",id);
        return genModuleConfigMapper.toDto(genModuleConfig);
    }

    @Override
    @CacheEvict(allEntries = true)
    @Transactional(rollbackFor = Exception.class)
    public GenModuleConfigDto create(GenModuleConfig resources) {
        resources.setId(IdUtil.simpleUUID());
        return genModuleConfigMapper.toDto(genModuleConfigRepository.save(resources));
    }

    @Override
    @CacheEvict(allEntries = true)
    @Transactional(rollbackFor = Exception.class)
    public void update(GenModuleConfig resources) {
        GenModuleConfig genModuleConfig = genModuleConfigRepository.findById(resources.getId()).orElseGet(GenModuleConfig::new);
        ValidationUtil.isNull( genModuleConfig.getId(),"GenModuleConfig","id",resources.getId());
        genModuleConfig.copy(resources);
        genModuleConfigRepository.save(genModuleConfig);
    }

    @Override
    @CacheEvict(allEntries = true)
    @Transactional(rollbackFor = Exception.class)
    public void delete(String id) {
        genModuleConfigRepository.deleteById(id);
    }

    @Override
    @CacheEvict(allEntries = true)
    public void deleteAll(String[] ids) {
        for (String id : ids) {
            genModuleConfigRepository.deleteById(id);
        }
    }

    @Override
    public void download(List<GenModuleConfigDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (GenModuleConfigDto genModuleConfig : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("描述", genModuleConfig.getName());
            map.put("类型", genModuleConfig.getType());
            map.put("内容", genModuleConfig.getContent());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}
