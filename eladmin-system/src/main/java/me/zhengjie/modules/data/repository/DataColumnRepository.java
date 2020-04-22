package me.zhengjie.modules.data.repository;

import me.zhengjie.modules.data.domain.DataColumn;
import me.zhengjie.modules.data.domain.DataColumnKey;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

/**
* @author zhanghouying
* @date 2020-03-13
*/
public interface DataColumnRepository extends JpaRepository<DataColumn, DataColumnKey>, JpaSpecificationExecutor<DataColumn> {

	@Modifying
	@Query(value = "delete from data_column where entity = ?1",nativeQuery = true)
	void deleteByEntityId(String id);
}
