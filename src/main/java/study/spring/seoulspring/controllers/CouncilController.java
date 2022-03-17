package study.spring.seoulspring.controllers;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import study.spring.seoulspring.model.Council;
import study.spring.seoulspring.service.CouncilService;
import study.spring.seoulspring.service.impl.CouncilServiceImpl;



@Controller
public class CouncilController {

	@Autowired
	CouncilService councilService;
	
	@RequestMapping(value = "introduce/introduce.do", method = RequestMethod.GET)
	public String Council_business(Locale locale , Model model) {

		return "introduce/introduce";
	}
	
	@GetMapping(value = "introduce/business_introduce.do")
		public String business_detail(Locale locale, Model model, @RequestParam("cnum") int cnum) {
		
		
		Council input = new Council();
		input.setCnum(cnum);
		List<Council> output = null;
		try {
			output = councilService.SelectBusin(input);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("output",output);
		
		
		
		return "introduce/business_introduce";
	}
	
}