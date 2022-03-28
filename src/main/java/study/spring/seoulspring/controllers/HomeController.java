package study.spring.seoulspring.controllers;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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


import org.json.simple.JSONObject; // JSON객체 생성
import org.json.simple.JSONArray; // JSON이 들어있는 Array 생성
import org.json.simple.parser.JSONParser; // JSON객체 파싱
import org.json.simple.parser.ParseException; 

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

	@RequestMapping(value = "/pdf.do", method = RequestMethod.GET)
	public String pdf(Model model) {

		List<String> list = new ArrayList<String>();
		list.add("Java");
		list.add("파이썬");
		list.add("R");
		list.add("C++");
		list.add("자바스크립트");
		list.add("Ruby");
		list.add("스칼라");
		list.add("클로져");
		list.add("자바");

		// 뷰에게 전달할 데이터 저장
		model.addAttribute("list", list);

		// 출력할 뷰 이름 리턴
		return "pdf";
	}

	@RequestMapping(value = "/snu_mbti.do", method = RequestMethod.GET)
	public String mbti(Locale locale, Model model) {

		return "snu_mbti";
	}

	@RequestMapping(value = "game/game.do", method = RequestMethod.GET)
	public String game(Locale locale, Model model) {

		return "game/game";
	}
	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	public String login(Locale locale, HttpServletRequest request, HttpServletResponse response, Model model,@RequestParam("si_id") String si_id,@RequestParam("si_pwd") String si_pwd ) throws MalformedURLException, IOException {
		
		String id = si_id;
		String pw = si_pwd;
		
		String postString = "method=json&si_id="+id+"&si_pwd="+ java.net.URLEncoder.encode(pw,"UTF-8");
		HttpURLConnection urlConnection = (HttpURLConnection)new URL("https://sso.snu.ac.kr/safeidentity/modules/auth_idpwd").openConnection();
		urlConnection.setDoOutput(true);
		urlConnection.setDoInput(true);
		urlConnection.setRequestMethod("POST");
		urlConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
		urlConnection.getOutputStream().write(postString.getBytes());
		java.io.BufferedReader br = new java.io.BufferedReader(new java.io.InputStreamReader(urlConnection.getInputStream()));
		StringBuilder sb = new StringBuilder();

	
		String line;
		while ((line = br.readLine()) != null) {
			sb.append(line).append("\n");
		}
		model.addAttribute("sb", sb.toString().trim());
	
		HttpSession session = request.getSession();
		response.setHeader("Content-Type", "text/html;charset=utf-8");
	    try
	    {
	      request.setCharacterEncoding("utf-8");
	    }
	    catch (UnsupportedEncodingException e)
	    {
	      e.printStackTrace();
	    }
		

		return "home";
	}

	@RequestMapping("/busin")
	public String busin() {
		return "busin";
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
		// Department input = new Department();
		// input.setDname(department);
		// List<Department> departmentList = null;

		// try {
		// departmentList = departmentService.getDepartmentList(input);

		// } catch (Exception e) {
		// TODO Auto-generated catch block
		// e.printStackTrace();
		// }

		// model.addAttribute("departmentList", departmentList);

		return "Q&A";
	}

	@RequestMapping(value = { "/count.do" }, method = RequestMethod.GET)
	@ResponseBody
	public void ViewCountUpdate(String title) {

	}

	@RequestMapping(value = { "/reservation.do" }, method = RequestMethod.GET)

	public String reservation(Model model, @RequestParam("reserve_date") String date,
			@RequestParam("room_num") int room_num) {

		String month = date.substring(5, 7);
		String day = date.substring(8);
		model.addAttribute("month", month);
		model.addAttribute("day", day);
		model.addAttribute("room_num", room_num);

		return "/reservation";

	}

	@RequestMapping(value = "/calendar.do", method = RequestMethod.GET)
	public String calendar(Model model, HttpServletRequest request, DateData dateData, Locale locale) {

		Calendar cal = Calendar.getInstance();
		int today_year = cal.get(Calendar.YEAR);
		int today_month = cal.get(Calendar.MONTH) + 1;
		String today = "";
		int today_date = cal.get(Calendar.DATE);
		if (today_month < 10) {
			today = today_year + "-0" + today_month + "-" + today_date;
		} else {
			today = today_year + "-" + today_month + "-" + today_date;
		}
		DateData calendarData;
		// 검색 날짜
		if (dateData.getDate().equals("") && dateData.getMonth().equals("")) {
			dateData = new DateData(String.valueOf(cal.get(Calendar.YEAR)), String.valueOf(cal.get(Calendar.MONTH)),
					String.valueOf(cal.get(Calendar.DATE)), null);
		}
		// 검색 날짜 end

		Map<String, Integer> today_info = dateData.today_info(dateData);
		List<DateData> dateList = new ArrayList<DateData>();

		// 실질적인 달력 데이터 리스트에 데이터 삽입 시작.
		// 일단 시작 인덱스까지 아무것도 없는 데이터 삽입
		for (int i = 1; i < today_info.get("start"); i++) {
			calendarData = new DateData(null, null, null, null);
			dateList.add(calendarData);
		}

		// 날짜 삽입
		for (int i = today_info.get("startDay"); i <= today_info.get("endDay"); i++) {
			if (i == today_info.get("today")) {
				calendarData = new DateData(String.valueOf(dateData.getYear()), String.valueOf(dateData.getMonth()),
						String.valueOf(i), "today");
			} else {
				calendarData = new DateData(String.valueOf(dateData.getYear()), String.valueOf(dateData.getMonth()),
						String.valueOf(i), "normal_date");
			}
			dateList.add(calendarData);
		}

		// 달력 빈곳 빈 데이터로 삽입
		int index = 7 - dateList.size() % 7;

		if (dateList.size() % 7 != 0) {

			for (int i = 0; i < index; i++) {
				calendarData = new DateData(null, null, null, null);
				dateList.add(calendarData);
			}
		}
		System.out.println(dateList);

		// 배열에 담음
		model.addAttribute("dateList", dateList); // 날짜 데이터 배열
		model.addAttribute("today_info", today_info);
		model.addAttribute("today", today);
		return "/calendar";
	}

}
