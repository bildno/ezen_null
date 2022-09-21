package com.study.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.study.springboot.dao.Ione2one_answerDao;
import com.study.springboot.dto.one2one_answerDto;

@Component
public class one2one_answerService {

		@Autowired
		private Ione2one_answerDao ione2one_answerDao;
		
		public List<one2one_answerDto> one2one_answer(String member_id) {
			List<one2one_answerDto> one2oneanswer_list = ione2one_answerDao.one2one_answer(member_id);
			
			return one2oneanswer_list;
			
		}
		
}
