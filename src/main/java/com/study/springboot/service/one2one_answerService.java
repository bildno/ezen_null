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

	public int one2one_answer_write(String one2oneanswer_content, String one2one_number, String one2one_member_id) {
		int result = ione2one_answerDao.one2one_answer_write(one2oneanswer_content, one2one_number, one2one_member_id);
		return result;
	}

	public List<one2one_answerDto>ad_one2oneanswer_list(String one2one_number) {

		List<one2one_answerDto>ad_one2oneanswer_list = ione2one_answerDao.ad_one2oneanswer_list(one2one_number);

		return ad_one2oneanswer_list;

	}
}