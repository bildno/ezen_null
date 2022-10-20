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
import com.study.springboot.dto.mycheckDto;
import com.study.springboot.service.CalendarService;

@Controller
@RequestMapping("/mycheck")
public class mycheckController {
	
	@Autowired
	mycheckDao mycheckDao;
	
	@Autowired
    CalendarService calendarService;

	
	@RequestMapping() //기본 페이지 표시 
	public String viewCalendar(//@RequestParam(value="mycheck_number", required=false) String mycheck_number,
			//@RequestParam(value="mycheck_member_id", required=false) String mycheck_member_id,
			@RequestParam(value="mycheck_date", required=false) Date mycheck_date,
			HttpServletRequest request, Model model){
		

		// insert --------------------------------
		mycheckDto mycheckdto = new mycheckDto();
		String member_id = (String)request.getSession().getAttribute("member_id");
		System.out.println(member_id);
		//mycheckdto.setMycheck_number(mycheck_number);
		//System.out.println(mycheck_number);
		
		mycheckdto.setMycheck_member_id(member_id);
		
		mycheckdto.setMycheck_date(mycheck_date);
		System.out.println(mycheck_date);
		
		
		calendarService.insertMycheck(mycheckdto);
		// ---------------------------------------
		List<mycheckDto> mycheck_list = mycheckDao.mycheck_list(member_id);
		
		model.addAttribute("mycheck_list", mycheck_list);
		System.out.println("---------------------");
		System.out.println("mycheck_listttttttttttttttttt"+mycheck_list);
		
		
		
		model.addAttribute("mainPage", "member/mycheck.jsp");

		return "index";
		}
	
	@GetMapping("/event") //ajax 데이터 전송 URL
    public @ResponseBody List<Map<String, Object>> getEvent(HttpServletRequest request){

		return calendarService.getEventList(request);
    }
	
}
