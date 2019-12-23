package com.exam.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class MessageVO {
	private String sendname;
	private String message;
	@DateTimeFormat(pattern ="yyyy-MM-dd")
	private Date regtime;
	private String username;
	private String readthis;
}
