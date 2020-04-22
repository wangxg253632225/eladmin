package me.zhengjie.rest;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import me.zhengjie.domain.GenModuleConfig;
import me.zhengjie.service.GenModuleConfigService;
import me.zhengjie.service.dto.GenModuleConfigQueryCriteria;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
* @author ZhangHouYing
* @date 2020-03-04
*/
@Api(tags = "genModuleConfig管理")
@RestController
@RequestMapping("/api/genModuleConfig")
public class GenModuleConfigController {

    private final GenModuleConfigService genModuleConfigService;

    public GenModuleConfigController(GenModuleConfigService genModuleConfigService) {
        this.genModuleConfigService = genModuleConfigService;
    }

    @ApiOperation("导出数据")
    @GetMapping(value = "/download")
    @PreAuthorize("@el.check('genModuleConfig:list')")
    public void download(HttpServletResponse response, GenModuleConfigQueryCriteria criteria) throws IOException {
        genModuleConfigService.download(genModuleConfigService.queryAll(criteria), response);
    }

    @GetMapping
    @ApiOperation("查询genModuleConfig")
    @PreAuthorize("@el.check('genModuleConfig:list')")
    public ResponseEntity getGenModuleConfigs(GenModuleConfigQueryCriteria criteria, Pageable pageable){
        return new ResponseEntity<>(genModuleConfigService.queryAll(criteria,pageable),HttpStatus.OK);
    }

    @PostMapping
    @ApiOperation("新增genModuleConfig")
    @PreAuthorize("@el.check('genModuleConfig:add')")
    public ResponseEntity create(@Validated @RequestBody GenModuleConfig resources){
        return new ResponseEntity<>(genModuleConfigService.create(resources),HttpStatus.CREATED);
    }

    @PutMapping
    @ApiOperation("修改genModuleConfig")
    @PreAuthorize("@el.check('genModuleConfig:edit')")
    public ResponseEntity update(@Validated @RequestBody GenModuleConfig resources){
        genModuleConfigService.update(resources);
        return new ResponseEntity(HttpStatus.NO_CONTENT);
    }

    @DeleteMapping(value = "/{id}")
    @ApiOperation("删除genModuleConfig")
    @PreAuthorize("@el.check('genModuleConfig:del')")
    public ResponseEntity delete(@PathVariable String id){
        genModuleConfigService.delete(id);
        return new ResponseEntity(HttpStatus.OK);
    }

    @ApiOperation("多选删除genModuleConfig")
    @PreAuthorize("@el.check('genModuleConfig:del')")
    @DeleteMapping
    public ResponseEntity deleteAll(@RequestBody String[] ids) {
        genModuleConfigService.deleteAll(ids);
        return new ResponseEntity(HttpStatus.OK);
    }
}
