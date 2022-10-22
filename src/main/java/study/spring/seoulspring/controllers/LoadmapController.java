package study.spring.seoulspring.controllers;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import study.spring.seoulspring.model.DateData;
import study.spring.seoulspring.model.Department;
import study.spring.seoulspring.model.View;
import study.spring.seoulspring.service.DepartmentService;
import study.spring.seoulspring.service.ViewService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class LoadmapController {

	@Autowired
	DepartmentService departmentService;

	@Autowired
	ViewService viewService;

	@RequestMapping(value = "loadmap/snu_class_loadmap.do", method = RequestMethod.GET)
	public String snu_class_loadmap(Locale locale, Model model) {

		return "loadmap/snu_class_loadmap";
	}
	
	@RequestMapping(value = "loadmap/snu_education_loadmap.do", method = RequestMethod.GET)
	public String education_loadmap(Locale locale, Model model) {

		return "loadmap/snu_education_loadmap";
	}

	@RequestMapping(value = "loadmap/snu_class_loadmap_detail.do", method = RequestMethod.GET)
	public String snu_class_loadmap_detail(Locale locale, Model model, @RequestParam("department") String department) {

		Department input = new Department();
		input.setDname(department);
		Department department_result = null;

		try {
			department_result = departmentService.SelectDepartment(input);

		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("department", department_result);

		return "loadmap/snu_class_loadmap_detail";
	}
	
	

}
