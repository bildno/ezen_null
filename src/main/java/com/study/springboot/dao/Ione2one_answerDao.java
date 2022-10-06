package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.one2one_answerDto;

@Mapper
public interface Ione2one_answerDao {
	
	public List<one2one_answerDto> one2one_answer(String member_id);
	public int one2one_answer_write(String one2oneanswer_content, String one2one_number, String one2one_member_id);
	public List<one2one_answerDto>ad_one2oneanswer_list(String one2one_number);
	public int ad_one2oneanswer_update(String one2oneanswer_content,String one2oneanswer_one2one_number);
	public int one2oneanswer_Delete(int num);
}
