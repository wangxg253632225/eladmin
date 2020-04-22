package me.zhengjie.service.mapper;

import me.zhengjie.base.BaseMapper;
import me.zhengjie.domain.GenModuleConfig;
import me.zhengjie.service.dto.GenModuleConfigDto;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

/**
* @author ZhangHouYing
* @date 2020-03-04
*/
@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface GenModuleConfigMapper extends BaseMapper<GenModuleConfigDto, GenModuleConfig> {

}
