package me.zhengjie.rest;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import me.zhengjie.domain.ColumnInfo;
import me.zhengjie.domain.GenConfig;
import me.zhengjie.domain.GenCustom;
import me.zhengjie.domain.vo.DelBody;
import me.zhengjie.domain.vo.GenerateConfig;
import me.zhengjie.domain.vo.QueryBody;
import me.zhengjie.exception.BadRequestException;
import me.zhengjie.service.GenCustomService;
import me.zhengjie.service.GeneratorService;
import me.zhengjie.service.dto.GenCustomQueryCriteria;
import me.zhengjie.utils.GenUtil;
import me.zhengjie.utils.SecurityUtils;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
* @author Helitupos
* @date 2020-03-04
*/
@Api(tags = "genCustom管理")
@RestController
@RequestMapping("/api/genCustom")
public class GenCustomController {

    private final GenCustomService genCustomService;
	private final GeneratorService generatorService;

    public GenCustomController(GeneratorService generatorService, GenCustomService genCustomService) {
		this.generatorService = generatorService;
    	this.genCustomService = genCustomService;
    }

    @ApiOperation("导出数据")
    @GetMapping(value = "/download")
    @PreAuthorize("@el.check('genCustom:list')")
    public void download(HttpServletResponse response, GenCustomQueryCriteria criteria) throws IOException {
        genCustomService.download(genCustomService.queryAll(criteria), response);
    }

    @GetMapping
    @ApiOperation("查询genCustom")
    @PreAuthorize("@el.check('genCustom:list')")
    public ResponseEntity getGenCustoms(GenCustomQueryCriteria criteria, Pageable pageable){
        return new ResponseEntity<>(genCustomService.queryAll(criteria,pageable),HttpStatus.OK);
    }

    @PostMapping
    @ApiOperation("新增genCustom")
    @PreAuthorize("@el.check('genCustom:add')")
    public ResponseEntity create(@Validated @RequestBody GenCustom resources){
        return new ResponseEntity<>(genCustomService.create(resources),HttpStatus.CREATED);
    }

    @PutMapping
    @ApiOperation("修改genCustom")
    @PreAuthorize("@el.check('genCustom:edit')")
    public ResponseEntity update(@Validated @RequestBody GenCustom resources){
        genCustomService.update(resources);
        return new ResponseEntity(HttpStatus.NO_CONTENT);
    }

	@PutMapping(value = "/save")
	@ApiOperation("保存genCustom")
	@PreAuthorize("@el.check('genCustom:edit')")
	public ResponseEntity save(@Validated @RequestBody GenCustom resources){
		genCustomService.create(resources);
		return new ResponseEntity(HttpStatus.NO_CONTENT);
	}

    @DeleteMapping(value = "/{id}")
    @ApiOperation("删除genCustom")
    @PreAuthorize("@el.check('genCustom:del')")
    public ResponseEntity delete(@PathVariable String id){
        genCustomService.delete(id);
        return new ResponseEntity(HttpStatus.OK);
    }

	@GetMapping(value = "/get/{id}")
	@ApiOperation("获取genCustom")
	@PreAuthorize("@el.check('genCustom:list')")
	public ResponseEntity get(@PathVariable String id){

		return new ResponseEntity(genCustomService.findById(id),HttpStatus.OK);
	}

    @ApiOperation("多选删除genCustom")
    @PreAuthorize("@el.check('genCustom:del')")
    @DeleteMapping
    public ResponseEntity deleteAll(@RequestBody String[] ids) {
        genCustomService.deleteAll(ids);
        return new ResponseEntity(HttpStatus.OK);
    }

	@ApiOperation("获取字段并查询数据")
	@PutMapping(value = "/queryData")
	public ResponseEntity queryData(@RequestBody QueryBody queryBody){
		//generatorService.save(columnInfos);
		return new ResponseEntity(genCustomService.queryData(queryBody),HttpStatus.OK);
	}

	@ApiOperation("获取字段并查询数据")
	@PutMapping(value = "/delData")
	public ResponseEntity delData(@RequestBody DelBody delBody){
		//generatorService.save(columnInfos);
		genCustomService.delData(delBody);
		return new ResponseEntity(HttpStatus.OK);
	}

	@PutMapping(value = "/generate")
	@ApiOperation("代码生成")
	@PreAuthorize("@el.check('genCustom:edit')")
	public ResponseEntity generate(@Validated @RequestBody GenerateConfig resources){
		try {
			List<ColumnInfo> columns = resources.getColumns();
			if (columns.size() > 1) {
				String[] packArray = resources.getPack().split("\\.");
				ColumnInfo column = columns.get(0);
				GenConfig genConfig = new GenConfig();
				genConfig.setAuthor(SecurityUtils.getCurrentUsername());
				genConfig.setPath("../eladmin-web/src");
				genConfig.setApiAlias(packArray[packArray.length-1]);
				genConfig.setApiPath(resources.getPack().replace(".","/"));
				genConfig.setCover(true);
				genConfig.setModuleName("eladmin-system");
				genConfig.setPack("me.zhengjie.modules."+resources.getPack());

				genConfig.setPrefix("");
				genConfig.setTableName(column.getTableName());
				GenUtil.generatorCode(columns, genConfig);
			}
		} catch (IOException e) {
			e.printStackTrace();
			throw new BadRequestException("生成失败，请手动处理已生成的文件");
		}
		return new ResponseEntity(HttpStatus.NO_CONTENT);
	}
}
