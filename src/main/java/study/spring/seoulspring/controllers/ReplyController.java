package study.spring.seoulspring.controllers;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import study.spring.seoulspring.helper.WebHelper;
import study.spring.seoulspring.model.Community;
import study.spring.seoulspring.model.Member;
import study.spring.seoulspring.model.Reply;
import study.spring.seoulspring.service.ReplyService;

@Controller
public class ReplyController {

	@Autowired
	ReplyService replyService;
	@Value("#{servletContext.contextPath}")
	String contextPath;
	@Autowired
	WebHelper webHelper;

	@RequestMapping(value = "community/reply_write_insert.do", method = RequestMethod.GET)
	@ResponseBody
	public int reply_write_insert(Locale locale, Model model, HttpServletRequest request,
			@RequestParam("posttext") String posttext, @RequestParam("postno") int postno) {

		Reply reply = new Reply();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date time = new Date();

		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("member");

		String memberid = member.getName();
		reply.setPost_num(postno);
		reply.setReply_txt(posttext);
		reply.setReply_name(memberid);

		int result = 0;
		try {
			result = replyService.insertPost(reply);
			result = reply.getReply_num();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;

	}

	@RequestMapping(value = "community/reply_delete.do", method = RequestMethod.GET)
	@ResponseBody
	public void post_delete(Locale locale, Model model, HttpServletRequest request,
			@RequestParam("replyno") int reply_num) {

		Reply input = new Reply();
		System.out.println(reply_num);
		input.setReply_num(reply_num);
		int result = 0;
		try {
			result = replyService.DeletePost(input);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
