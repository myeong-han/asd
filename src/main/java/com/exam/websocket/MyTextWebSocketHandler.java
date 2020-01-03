package com.exam.websocket;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.google.gson.Gson;

public class MyTextWebSocketHandler extends TextWebSocketHandler {
	
	private Gson gson = new Gson();

	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		
		Map<String, Object> map = session.getAttributes();
		String room = (String) map.get("room");
		String nickname = (String) map.get("nickname");
		
		if (!Data.roomsMap.containsKey(room)) { // 방이 없으면
			Data.roomsMap.put(room, new ArrayList<WebSocketSession>()); // 방 개설
		}

		RoomAndNickname roomAndNickname = new RoomAndNickname(room, nickname);
		Data.sessionIdAndRoomMap.put(session.getId(), roomAndNickname);
		System.out.println(roomAndNickname);
		List<WebSocketSession> sessionList = Data.roomsMap.get(room);
		sessionList.add(session); // 채팅방 참가

		Message message = new Message();
		message.setNickname(nickname);
		message.setContent(nickname + "님이 채팅방에 참가하였습니다.");
		
		broadcast(room, session, message);
		
	} // afterConnectionEstablished

	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		String str = message.getPayload();
		Message msg = gson.fromJson(str, Message.class);
		System.out.println(msg);
		
		RoomAndNickname roomAndNickname = Data.sessionIdAndRoomMap.get(session.getId());
		String room = roomAndNickname.getRoom();

		if (msg.getWhisperName().equals("")) {
			broadcast(room, session, msg);
		} else {
			whisper(room, msg);
		}
	} // handleTextMessage

	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		
		RoomAndNickname roomAndNickname = Data.sessionIdAndRoomMap.get(session.getId());
		String room = roomAndNickname.getRoom();
		String nickname = roomAndNickname.getNickname();

		Message message = new Message();
		message.setNickname(nickname);
		message.setContent(nickname + "님이 채팅방에서 퇴장하였습니다.");

		broadcast(room, session, message);

		List<WebSocketSession> sessionList = Data.roomsMap.get(room);
		sessionList.remove(session);
		if (sessionList.size() == 0) {
			Data.roomsMap.remove(room);
		}

		Data.sessionIdAndRoomMap.remove(session.getId());
		
	} // afterConnectionClosed
	
	@Override
	public void handleTransportError(WebSocketSession session, Throwable exception) throws Exception {
		// Do error handling here
	} // handleTransportError
	
	
	
	// 모두에게 메시지 전송
	private void broadcast(String room, WebSocketSession selfSession, Message message) throws Exception {
		List<WebSocketSession> sessionList = Data.roomsMap.get(room);

		for (WebSocketSession session : sessionList) {
			if (session.getId().equals(selfSession.getId())) {
				continue; // 메시지 보낸 당사자에게는 전송 제외하기
			}
			
			String str = gson.toJson(message);
			
			session.sendMessage(new TextMessage(str));
		}
	} // broadcast
	
	
	// 특정인 한명에게 귓속말 전송
	private void whisper(String room, Message message) throws Exception {
		List<WebSocketSession> sessionList = Data.roomsMap.get(room);

		String whisperName = message.getWhisperName();
		for (WebSocketSession session : sessionList) {
			RoomAndNickname roomAndNickname = Data.sessionIdAndRoomMap.get(session.getId());
			String nickname = roomAndNickname.getNickname();
			if (nickname.equals(whisperName)) {
				String content = message.getNickname() + "님이 " + whisperName + "님에게 귓속말: " + message.getContent();
				message.setContent(content);
				
				String str = gson.toJson(message);
				
				session.sendMessage(new TextMessage(str));
				
				break;
			}
		}
	} // whisper
	
}
