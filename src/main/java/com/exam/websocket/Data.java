package com.exam.websocket;

import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import org.springframework.web.socket.WebSocketSession;

public class Data {
	// 채팅방 정보
	// Key: 채팅방 이름, Value: 채팅방 참가자
	public static Map<String, List<WebSocketSession>> roomsMap = new TreeMap<>();
		
	// 귓속말 기능에서 사용자 정보 가져오기 위한 컬렉션 
	// Key: 세션아이디, Value: 세션아이디에 해당하는 채팅별명과 참여하고있는 채팅방이름
	public static Map<String, RoomAndNickname> sessionIdAndRoomMap = new TreeMap<>();
		
}
