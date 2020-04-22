package me.zhengjie.modules.data.repository;

import me.zhengjie.modules.data.domain.DataEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
* @author zhanghouying
* @date 2020-03-13
*/
public interface DataEntityRepository extends JpaRepository<DataEntity, String>, JpaSpecificationExecutor<DataEntity> {
}
