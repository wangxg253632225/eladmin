package me.zhengjie.repository;

import me.zhengjie.domain.GenModuleConfig;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
* @author ZhangHouYing
* @date 2020-03-04
*/
public interface GenModuleConfigRepository extends JpaRepository<GenModuleConfig, String>, JpaSpecificationExecutor<GenModuleConfig> {
}
