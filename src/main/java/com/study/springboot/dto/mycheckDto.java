package com.study.springboot.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class mycheckDto {
	private String mycheck_number;
	private String mycheck_member_id;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date mycheck_date;
}
