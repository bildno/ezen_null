package com.study.springboot;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.study.springboot.service.CalendarService;

@Controller
@RequestMapping("/mycheck")
public class mycheckController {
	
	@Autowired
    CalendarService calendarService;
	
	@RequestMapping() //기본 페이지 표시 
	public String viewCalendar(HttpServletRequest request, Model model){
		
		HttpSession session = request.getSession();
		
		String member_id = (String)session.getAttribute("member_id");
		
		
		
		System.out.println(member_id);
		model.addAttribute("mainPage", "member/mycheck.jsp");
		return "index"; 
		}
	
	@GetMapping("/event") //ajax 데이터 전송 URL
    public @ResponseBody List<Map<String, Object>> getEvent(){
    	
    	// 현재날짜주입
    	
    	System.out.println("getEvent");
		return calendarService.getEventList();
    }
	
}
