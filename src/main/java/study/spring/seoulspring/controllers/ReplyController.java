package study.spring.seoulspring.controllers;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ReplyController {
	
	@RequestMapping(value = "community/reply_write_insert.do", method = RequestMethod.POST)
	public ModelAndView reply_write_insert(Locale locale, Model model) {
		
		
		return null;
	}
}
