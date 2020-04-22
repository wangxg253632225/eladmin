package me.zhengjie.modules.data.service.mapper;

import me.zhengjie.base.BaseMapper;
import me.zhengjie.modules.data.domain.DataEntity;
import me.zhengjie.modules.data.service.dto.DataEntityDto;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

/**
* @author zhanghouying
* @date 2020-03-13
*/
@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface DataEntityMapper extends BaseMapper<DataEntityDto, DataEntity> {

}
