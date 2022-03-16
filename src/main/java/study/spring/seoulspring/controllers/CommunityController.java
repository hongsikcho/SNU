package study.spring.seoulspring.controllers;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import study.spring.seoulspring.model.Department;
import study.spring.seoulspring.model.View;
import study.spring.seoulspring.service.DepartmentService;
import study.spring.seoulspring.service.ViewService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class CommunityController {

	@Autowired
	DepartmentService departmentService;
	
	@Autowired
	ViewService viewService;

	@RequestMapping(value = "community/Q&A.do", method = RequestMethod.GET)
	public String QandA(Locale locale, Model model) {
		
		return "community/Q&A";
	}
	
	@RequestMapping(value = "community/FAQ.do", method = RequestMethod.GET)
	public String FAQ(Locale locale, Model model) {
		
		return "community/FAQ";
	}
	
	@RequestMapping(value = "community/announce.do", method = RequestMethod.GET)
	public String announce(Locale locale, Model model) {
		
		return "community/announce";
	}
	
	@RequestMapping(value = "community/Hi.do", method = RequestMethod.GET)
	public String Hi(Locale locale, Model model) {
		
		return "community/Hi";
	}


	
}
