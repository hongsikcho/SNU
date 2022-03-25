package study.spring.seoulspring.controllers;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import study.spring.seoulspring.helper.WebHelper;
import study.spring.seoulspring.model.Community;
import study.spring.seoulspring.model.Reply;
import study.spring.seoulspring.service.CommunityService;
import study.spring.seoulspring.service.ReplyService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class CommunityController {

	@Autowired
	ReplyService replyService;
	@Autowired
	CommunityService communityService;
	@Autowired
	WebHelper webHelper;

	@Value("#{servletContext.contextPath}")
	String contextPath;

	@RequestMapping(value = "community/Q&A.do", method = RequestMethod.GET)
	public String QandA(Locale locale, Model model) {
		List<Community> output = null;
		try {
			output = communityService.selectList();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("output", output);
		return "community/Q&A";
	}

	@RequestMapping(value = "community/Q&A_write.do", method = RequestMethod.GET)
	public String QandA_write(Locale locale, Model model) {

		return "community/Q&A_write";
	}

	@RequestMapping(value = "community/Q&A_write_insert.do", method = RequestMethod.POST)
	public ModelAndView QandA_write_insert(Locale locale, Model model,
			@RequestParam("postcategory") String postcategory, @RequestParam("posttype") String posttype,
			@RequestParam("posttitle") String posttitle, @RequestParam("postcontent") String postcontent,
			@RequestParam("postpublic") String postpublic) {

		Community input = new Community();

		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date time = new Date();
		String datetime = format.format(time);
		input.setPostcategory(postcategory);
		input.setPosttype(posttype);
		input.setPosttitle(posttitle);
		input.setPostcontent(postcontent);
		input.setPostpublic(postpublic);
		input.setPostdate(datetime);
		input.setMemberno(0);

		int result = 0;
		try {
			result = communityService.insertPost(input);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
		String redirectUrl = this.contextPath + "/community/Q&A.do";
		
		return this.webHelper.redirect(redirectUrl, null);
	}

	@RequestMapping(value = "community/FAQ.do", method = RequestMethod.GET)
	public String FAQ(Locale locale, Model model) {

		return "community/FAQ";
	}
	
	@RequestMapping(value = "community/Q&A_view_page.do", method = RequestMethod.GET)
	public String view_page(Locale locale, Model model,@RequestParam("postno") int postno) {
		
		
		//Reply객체 생성
		Reply reply = new Reply();
		reply.setPost_num(postno);
		Reply re_comment = null;
		
		//community객체 생성
		Community input = new Community();
		input.setPostno(postno);
		Community output = null;
		int update =0;
		
		try {
			update = communityService.updatePostView(input);
			output = communityService.selectOne(input);
			re_comment = replyService.selectOne(reply);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("output", output);
		model.addAttribute("reply",re_comment);

		return "community/Q&A_view_page";
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
