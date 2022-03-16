package study.spring.seoulspring.controllers;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.http.ContentDisposition;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestHeader;

import com.google.common.net.HttpHeaders;

import study.spring.seoulspring.model.Department;
import study.spring.seoulspring.service.DepartmentService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class FileController {
	@Autowired
    ResourceLoader resourceLoader;
	@Autowired
	HttpServletRequest request;
	@Autowired
	DepartmentService departmentService;
	@Autowired
	HttpServletResponse response;
	
	@GetMapping("/file/{filename}")
	public ResponseEntity<Resource> fileDownload(@RequestHeader("User-Agent")String userAgemt,@PathVariable String filename) throws IOException{
		
		Resource resource = resourceLoader.getResource("classpath:"+filename);
		File file = resource.getFile();
		
		return ResponseEntity.ok().header(HttpHeaders.CONTENT_DISPOSITION, ContentDisposition.attachment() // (6)
	            .filename(filename, StandardCharsets.UTF_8)
	            .build()
	            .toString())
	        .body(resource);
		
	}
	
	@GetMapping("/file/loadmap/{filename}")
	public ResponseEntity<Resource> LoadMapDownload(@RequestHeader("User-Agent")String userAgemt,@PathVariable String filename) throws IOException{
		
		Department input = new Department();
		input.setImage(filename);
		Department department_result = null;

		try {
			department_result = departmentService.SelectDepartment(input);

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		Resource resource = resourceLoader.getResource("classpath:/loadmap/"+filename+"_loadmap.hwp");
		File file = resource.getFile();
		
		return ResponseEntity.ok().header(HttpHeaders.CONTENT_DISPOSITION, ContentDisposition.attachment() // (6)
	            .filename(department_result.getDname()+"_졸업로드맵.hwp", StandardCharsets.UTF_8)
	            .build()
	            .toString())
	        .body(resource);
		
	}
	
	@GetMapping("/file/self_check/{filename}")
	public ResponseEntity<Resource> SelfCheckDownload(@RequestHeader("User-Agent")String userAgemt,@PathVariable String filename) throws IOException{
		
		Department input = new Department();
		input.setImage(filename);
		Department department_result = null;
		try {
			department_result = departmentService.SelectDepartment(input);

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		Resource resource = resourceLoader.getResource("classpath:/self_check/"+filename+"_self_check.hwp");
		File file = resource.getFile();
		
		return ResponseEntity.ok().header(HttpHeaders.CONTENT_DISPOSITION, ContentDisposition.attachment() // (6)
	            .filename(department_result.getDname()+"_자가진단표.hwp", StandardCharsets.UTF_8)
	            .build()
	            .toString())
	        .body(resource);
		
	}
	
	
    

}
