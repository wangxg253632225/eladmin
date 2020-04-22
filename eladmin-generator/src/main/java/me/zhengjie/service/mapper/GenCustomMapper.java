package me.zhengjie.service.mapper;

import me.zhengjie.base.BaseMapper;
import me.zhengjie.domain.GenCustom;
import me.zhengjie.service.dto.GenCustomDto;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

/**
* @author Helitupos
* @date 2020-03-04
*/
@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface GenCustomMapper extends BaseMapper<GenCustomDto, GenCustom> {

}
