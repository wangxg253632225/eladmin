package me.zhengjie.modules.data.rest;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import me.zhengjie.aop.log.Log;
import me.zhengjie.modules.data.domain.DataColumn;
import me.zhengjie.modules.data.domain.DataColumnKey;
import me.zhengjie.modules.data.service.DataColumnService;
import me.zhengjie.modules.data.service.dto.DataColumnQueryCriteria;
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
@Api(tags = "column管理")
@RestController
@RequestMapping("/api/dataColumn")
public class DataColumnController {

    private final DataColumnService dataColumnService;

    public DataColumnController(DataColumnService dataColumnService) {
        this.dataColumnService = dataColumnService;
    }

    @Log("导出数据")
    @ApiOperation("导出数据")
    @GetMapping(value = "/download")
    @PreAuthorize("@el.check('dataColumn:list')")
    public void download(HttpServletResponse response, DataColumnQueryCriteria criteria) throws IOException {
        dataColumnService.download(dataColumnService.queryAll(criteria), response);
    }

    @GetMapping
    @Log("查询column")
    @ApiOperation("查询column")
    @PreAuthorize("@el.check('dataColumn:list')")
    public ResponseEntity getDataColumns(DataColumnQueryCriteria criteria, Pageable pageable){
        return new ResponseEntity<>(dataColumnService.queryAll(criteria,pageable),HttpStatus.OK);
    }

    @PostMapping
    @Log("新增column")
    @ApiOperation("新增column")
    @PreAuthorize("@el.check('dataColumn:add')")
    public ResponseEntity create(@Validated @RequestBody DataColumn resources){
        return new ResponseEntity<>(dataColumnService.create(resources),HttpStatus.CREATED);
    }

    @PutMapping
    @Log("修改column")
    @ApiOperation("修改column")
    @PreAuthorize("@el.check('dataColumn:edit')")
    public ResponseEntity update(@Validated @RequestBody DataColumn resources){
        dataColumnService.update(resources);
        return new ResponseEntity(HttpStatus.NO_CONTENT);
    }

    @DeleteMapping
    @Log("删除column")
    @ApiOperation("删除column")
    @PreAuthorize("@el.check('dataColumn:del')")
    public ResponseEntity delete(@RequestBody DataColumnKey dataColumnKey){
        dataColumnService.delete(dataColumnKey);
        return new ResponseEntity(HttpStatus.OK);
    }

    @Log("多选删除column")
    @ApiOperation("多选删除column")
    @PreAuthorize("@el.check('dataColumn:del')")
    @DeleteMapping(value = "/deleteAll")
    public ResponseEntity deleteAll(@RequestBody DataColumnKey[] ids) {
        dataColumnService.deleteAll(ids);
        return new ResponseEntity(HttpStatus.OK);
    }
}
