package com.study.springboot.dto;

import lombok.Data;

@Data
public class wishDto {
	
	private String my_wish_number; //마이페이지 찜 한 내역 각 넘버들..
	private String my_wish_hostenter_number; //상세페이지 자체의 넘버
	private String my_wish_member_id;

}
