package com.exam.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class MessageVO {
	private int messageId;
	private String sendname;
	private String message;
	@DateTimeFormat(pattern ="yyyy-MM-dd")
	private Date writeDate;
	private String username;
	private String readthis;
}
