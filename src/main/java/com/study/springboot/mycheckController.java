package com.study.springboot;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.study.springboot.dao.mycheckDao;
import com.study.springboot.service.CalendarService;

@Controller
@RequestMapping("/mycheck")
public class mycheckController {

	@Autowired
	mycheckDao mycheckDao;
	
	@Autowired
    CalendarService calendarService;

	
	@RequestMapping() //기본 페이지 표시 
	public String viewCalendar(@RequestParam(value="mycheck_number", required=false) String mycheck_number,
			@RequestParam(value="mycheck_member_id", required=false) String mycheck_member_id,
			@RequestParam(value="mycheck_date", required=false) Date mycheck_date,
			HttpServletRequest request, Model model){
		
		//List<mycheckDto> mycheck_list = mycheckDao.mycheck_list(member_id);
		
		//model.addAttribute("mycheck_list", mycheck_list);
		System.out.println("---------------------11111");
		//System.out.println("mycheck_listttttttttttttttttt"+mycheck_list);
		
		
		
		model.addAttribute("mainPage", "member/mycheck.jsp");

		return "index";
		}
	
	@GetMapping("/event") //ajax 데이터 전송 URL
    public @ResponseBody List<Map<String, Object>> getEvent(HttpServletRequest request){
		System.out.println("hello");
		return calendarService.getEventList(request);
    }
	
	

	@GetMapping("/checkEvent") //ajax 데이터 전송 URL
    public @ResponseBody List<Map<String, Object>> checkEvent(HttpServletRequest request){

		return calendarService.checkEventclick(request);
    }

	
	
}
