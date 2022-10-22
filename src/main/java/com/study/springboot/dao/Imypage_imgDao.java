package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.mypage_imgDto;


@Mapper
public interface Imypage_imgDao {

	public int up_file_title(mypage_imgDto dto);
	
	List<mypage_imgDto> view_file_title(String mypage_img_member_id);
	
	public int delete_file(String mypage_img_member_id);
	
	public int deletefileid(String member_id);
	
	public int deletefileselect(String member_id);
}
