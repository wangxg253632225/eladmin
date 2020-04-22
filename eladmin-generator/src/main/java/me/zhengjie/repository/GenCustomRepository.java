package me.zhengjie.repository;

import me.zhengjie.domain.GenCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
* @author Helitupos
* @date 2020-03-04
*/
public interface GenCustomRepository extends JpaRepository<GenCustom, String>, JpaSpecificationExecutor<GenCustom> {
}
