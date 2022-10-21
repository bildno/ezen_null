package com.study.springboot.service;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.springboot.dao.mycheckDao;
import com.study.springboot.dto.mycheckDto;

@Service
public class CalendarService {

	@Autowired
	mycheckDao mycheckDao;

	public List<Map<String, Object>> getEventList(HttpServletRequest request) {

		String member_id = (String) request.getSession().getAttribute("member_id");
		List<mycheckDto> mycheck_list = mycheckDao.mycheck_list(member_id);
		System.out.println("---------mycheck_list = " + mycheck_list + "---  service  ---------");
		System.out.println("member_id = " + member_id);

		String pattern = "yyyy-MM-dd";
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
		List<Map<String, Object>> eventList = new ArrayList<Map<String, Object>>();

		// db저장값
		for (int i = 0; i < mycheck_list.size(); i++) {
			Map<String, Object> event = new HashMap<String, Object>();
			//Map<String,Object> image = new HashMap<String, Object>();
			
			System.out.println(i + "  ===========");
			String date = simpleDateFormat.format(mycheck_list.get(i).getMycheck_date());
			System.out.println(date);
			event.put("start", date);
			
			event.put("title", "💌💟💤💦💖💌💟💤💦💖");
			//event.put("textColor", "black");
			eventList.add(event);
			

			// System.out.println(event);

		}
		// 현재날짜
//    	Map<String, Object> event_today = new HashMap<String, Object>();
//    	event_today.put("start", LocalDate.now());
//    	event_today.put("title", "??????????????????");
//    	event_today.put("color", "red");
//    	event_today.put("textColor", "black");
//		eventList.add(event_today);

//		System.out.println("222222222222"+getEventList(request));

		return eventList;

	}

//	public int insertMycheck(mycheckDto dto) {
//		int insertMycheck = mycheckDao.insertMycheck(dto);
//		return insertMycheck;
//	}
	public List<Map<String, Object>> checkEventclick(HttpServletRequest request) {
		List<Map<String, Object>> eventList = new ArrayList<Map<String, Object>>();
		String member_id = (String) request.getSession().getAttribute("member_id");
		List<mycheckDto> mycheck_list = mycheckDao.mycheck_list(member_id);
		System.out.println("---------mycheck_list = " + mycheck_list + "---  service  ---------");
		System.out.println("member_id = " + member_id);

		String pattern = "yyyy-MM-dd";
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);

		// 출석기록 db저장값
		for (int i = 0; i < mycheck_list.size(); i++) {

			Map<String, Object> event = new HashMap<String, Object>();
			System.out.println(i + "  ===========");
			String date = simpleDateFormat.format(mycheck_list.get(i).getMycheck_date());
			System.out.println(date);
			event.put("start", date);
			event.put("title", "??????????????????");
			event.put("color", "red");
			event.put("textColor", "black");
			eventList.add(event);

			// System.out.println(event);

		}
		mycheckDto dto = new mycheckDto();
		dto.setMycheck_member_id(member_id);
		int insertMycheck = mycheckDao.insertMycheck(dto);
		
		// 현재날짜
		Map<String, Object> event_today = new HashMap<String, Object>();
		event_today.put("start", LocalDate.now());
		event_today.put("title", "??????????????????");
		event_today.put("color", "red");
		event_today.put("textColor", "black");
		eventList.add(event_today);

		return eventList;

	}
}