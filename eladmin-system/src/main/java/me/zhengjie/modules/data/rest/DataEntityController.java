package me.zhengjie.modules.data.rest;

import me.zhengjie.aop.log.Log;
import me.zhengjie.modules.data.domain.DataEntity;
import me.zhengjie.modules.data.domain.QueryParam;
import me.zhengjie.modules.data.service.DataEntityService;
import me.zhengjie.modules.data.service.dto.DataEntityQueryCriteria;
import me.zhengjie.modules.mnt.domain.Database;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
* @author zhanghouying
* @date 2020-03-13
*/
@Api(tags = "meta管理")
@RestController
@RequestMapping("/api/dataEntity")
public class DataEntityController {

    private final DataEntityService dataEntityService;

    public DataEntityController(DataEntityService dataEntityService) {
        this.dataEntityService = dataEntityService;
    }

    @Log("导出数据")
    @ApiOperation("导出数据")
    @GetMapping(value = "/download")
    @PreAuthorize("@el.check('dataEntity:list')")
    public void download(HttpServletResponse response, DataEntityQueryCriteria criteria) throws IOException {
        dataEntityService.download(dataEntityService.queryAll(criteria), response);
    }

    @GetMapping
    @Log("查询meta")
    @ApiOperation("查询meta")
    @PreAuthorize("@el.check('dataEntity:list')")
    public ResponseEntity getDataEntitys(DataEntityQueryCriteria criteria, Pageable pageable){
        return new ResponseEntity<>(dataEntityService.queryAll(criteria,pageable),HttpStatus.OK);
    }

	@GetMapping(value = "/queryTableList")
	@Log("查询表列表")
	@ApiOperation("查询表列表")
	@PreAuthorize("@el.check('dataEntity:list')")
	public ResponseEntity queryTableList(){
		DataEntityQueryCriteria criteria = new DataEntityQueryCriteria();
		return new ResponseEntity<>(dataEntityService.queryAll(criteria),HttpStatus.OK);
	}

    @PostMapping
    @Log("新增meta")
    @ApiOperation("新增meta")
    @PreAuthorize("@el.check('dataEntity:add')")
    public ResponseEntity create(@Validated @RequestBody DataEntity resources){
        return new ResponseEntity<>(dataEntityService.create(resources),HttpStatus.CREATED);
    }

    @PutMapping
    @Log("修改meta")
    @ApiOperation("修改meta")
    @PreAuthorize("@el.check('dataEntity:edit')")
    public ResponseEntity update(@Validated @RequestBody DataEntity resources){
        dataEntityService.update(resources);
        return new ResponseEntity(HttpStatus.NO_CONTENT);
    }

    @DeleteMapping(value = "/{id}")
    @Log("删除meta")
    @ApiOperation("删除meta")
    @PreAuthorize("@el.check('dataEntity:del')")
    public ResponseEntity delete(@PathVariable String id){
        dataEntityService.delete(id);
        return new ResponseEntity(HttpStatus.OK);
    }

    @Log("多选删除meta")
    @ApiOperation("多选删除meta")
    @PreAuthorize("@el.check('dataEntity:del')")
    @DeleteMapping
    public ResponseEntity deleteAll(@RequestBody String[] ids) {
        dataEntityService.deleteAll(ids);
        return new ResponseEntity(HttpStatus.OK);
    }

	@Log("同步元数据")
	@ApiOperation(value = "同步元数据")
	@PutMapping("/syncDatabase")
	@PreAuthorize("@el.check('dataEntity:edit')")
	public ResponseEntity syncDatabase(@Validated @RequestBody Database resources){
		int count = dataEntityService.syncDatabase(resources);
		return new ResponseEntity(count,HttpStatus.OK);
	}

	@Log("数据查询")
	@ApiOperation(value = "数据查询")
	@PutMapping("/queryData")
	@PreAuthorize("@el.check('dataEntity:edit')")
	public ResponseEntity queryData(@RequestBody QueryParam queryParam){
		return new ResponseEntity<>(dataEntityService.queryData(queryParam), HttpStatus.OK);
	}

}
