package com.exam.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.exam.domain.MessageVO;

public interface MessageMapper {
	// 메세지 보내기
	public int insertMessage(MessageVO messageVO);
	
	@Select("SELECT COUNT(*) FROM messages")
	public int countMessages();
	
	@Select("SELECT MAX(message_id) FROM messages") 
	public int getMaxMessage();
	
	// 전체 메세지 받아오기
	@Select("SELECT * FROM messages WHERE username = #{username} ORDER BY write_date DESC")
	public List<MessageVO> getMessagesByName(String username);
	
	// 안 읽은 메세지 받아오기
	@Select("SELECT * FROM messages WHERE username = #{username} AND readthis = 'x' ORDER BY write_date DESC")
	public List<MessageVO> getUnreadMessages(String username);
	
	// 카운트 메서드 (안읽은 메시지)
}
