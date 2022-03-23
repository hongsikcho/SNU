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
public class HomeController {

	@Autowired
	DepartmentService departmentService;
	
	@Autowired
	ViewService viewService;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		return "home";
	}
	
	@RequestMapping(value="/pdf.do", method=RequestMethod.GET)
	public String pdf(Model model){
		
		List<String> list = new ArrayList<String>();
		list.add("Java");
		list.add("�뙆�씠�뜫");
		list.add("R");
		list.add("C++");
		list.add("�옄諛붿뒪�겕由쏀듃");
		list.add("Ruby");
		list.add("�뒪移쇰씪");
		list.add("�겢濡쒖졇");
		list.add("�옄諛�");
		
		//酉곗뿉寃� �쟾�떖�븷 �뜲�씠�꽣 ���옣
		model.addAttribute("list",list);
		
		//異쒕젰�븷 酉� �씠由� 由ы꽩
		return "pdf";
	}

	@RequestMapping(value = "/snu_mbti.do", method = RequestMethod.GET)
	public String mbti(Locale locale, Model model) {

		return "snu_mbti";
	}
	
	@RequestMapping("/busin")
	public String busin() {
		return "busin";
	}

	@RequestMapping(value = "game/game.do", method = RequestMethod.GET)
	public String game(Locale locale, Model model) {

		return "game/game";
	}
	
	@RequestMapping(value = "/view.do", method = RequestMethod.GET)
	public String view(Locale locale, Model model) {
		
		View input = null;
		try {
			input = viewService.ViewItem();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("input", input);
		return "view";
	}

	@RequestMapping(value = "/Q&A.do", method = RequestMethod.GET)
	public String department2(Locale locale, Model model) {
		//Department input = new Department();
		//input.setDname(department);
		//List<Department> departmentList = null;

		//try {
			//departmentList = departmentService.getDepartmentList(input);

		//} catch (Exception e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
		//}

		//model.addAttribute("departmentList", departmentList);

		return "Q&A";
	}

	@RequestMapping(value = { "/count.do" }, method = RequestMethod.GET)
	@ResponseBody
	public void ViewCountUpdate(String title) {
		
	}
	
	@RequestMapping(value = { "/reservation.do" }, method = RequestMethod.GET)
	
	public String reservation(Model model,@RequestParam("reserve_date") String date,@RequestParam("room_num") int room_num  ) {
		
		String month=date.substring(5,7);
		String day =date.substring(8);
		model.addAttribute("month", month);
		model.addAttribute("day", day);
		model.addAttribute("room_num", room_num);
		
		return "/reservation";
		
	}
	
	@RequestMapping(value = "/calendar.do", method = RequestMethod.GET)
	public String calendar(Model model, HttpServletRequest request, DateData dateData,Locale locale){
		
		Calendar cal = Calendar.getInstance();
		int today_year = cal.get(Calendar.YEAR);
		int today_month = cal.get(Calendar.MONTH)+1;
		String today ="";
		int today_date = cal.get(Calendar.DATE);
		if(today_month<10) {
			 today = today_year +"-0"+today_month+"-"+today_date;
		}
		else {
		 today = today_year +"-"+today_month+"-"+today_date;
		}
		DateData calendarData;
		//寃��깋 �궇吏�
		if(dateData.getDate().equals("")&&dateData.getMonth().equals("")){
			dateData = new DateData(String.valueOf(cal.get(Calendar.YEAR)),String.valueOf(cal.get(Calendar.MONTH)),String.valueOf(cal.get(Calendar.DATE)),null);
		}
		//寃��깋 �궇吏� end

		Map<String, Integer> today_info =  dateData.today_info(dateData);
		List<DateData> dateList = new ArrayList<DateData>();
		
		//�떎吏덉쟻�씤 �떖�젰 �뜲�씠�꽣 由ъ뒪�듃�뿉 �뜲�씠�꽣 �궫�엯 �떆�옉.
		//�씪�떒 �떆�옉 �씤�뜳�뒪源뚯� �븘臾닿쾬�룄 �뾾�뒗 �뜲�씠�꽣 �궫�엯
		for(int i=1; i<today_info.get("start"); i++){
			calendarData= new DateData(null, null, null, null);
			dateList.add(calendarData);
		}
		
		//�궇吏� �궫�엯
		for (int i = today_info.get("startDay"); i <= today_info.get("endDay"); i++) {
			if(i==today_info.get("today")){
				calendarData= new DateData(String.valueOf(dateData.getYear()), String.valueOf(dateData.getMonth()), String.valueOf(i), "today");
			}else{
				calendarData= new DateData(String.valueOf(dateData.getYear()), String.valueOf(dateData.getMonth()), String.valueOf(i), "normal_date");
			}
			dateList.add(calendarData);
		}

		//�떖�젰 鍮덇납 鍮� �뜲�씠�꽣濡� �궫�엯
		int index = 7-dateList.size()%7;
		
		if(dateList.size()%7!=0){
			
			for (int i = 0; i < index; i++) {
				calendarData= new DateData(null, null, null, null);
				dateList.add(calendarData);
			}
		}
		System.out.println(dateList);
		
		//諛곗뿴�뿉 �떞�쓬
		model.addAttribute("dateList", dateList);		//�궇吏� �뜲�씠�꽣 諛곗뿴
		model.addAttribute("today_info", today_info);
		model.addAttribute("today", today);
		return "/calendar";
	}

}
