package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.adminDto;

@Mapper
public interface IadminDao {

	public List<adminDto>one2one_list();
	public List<adminDto>one2onepage( String startRowNum, String endRowNum );
	
	
	public List<adminDto>notice_list();
	public List<adminDto>noticepage( String startRowNum, String endRowNum );
	public int noticeDelete(int num);
}
