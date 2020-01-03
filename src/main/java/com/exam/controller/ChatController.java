package com.exam.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.socket.WebSocketSession;

import com.exam.websocket.Data;
import com.exam.websocket.RoomAndNickname;

@Controller
@RequestMapping("/chat/*")
public class ChatController {

	@GetMapping("/list")
	public String list(Model model){
		
		List<Map<String, Object>> list = new ArrayList<Map<String,Object>>();
		Set<String> roomsSet = Data.roomsMap.keySet();
		
		for(String room : roomsSet) {
			List<WebSocketSession> sessionList = Data.roomsMap.get(room);
			
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("room", room);
			map.put("size", sessionList.size());
			
			list.add(map);
		}
		model.addAttribute("roomsList", list);
		
		return "chat/chat_room_list";
	}
	
	@GetMapping("/join")
	public String join(@ModelAttribute("room") String room, @ModelAttribute("nickname") String nickname) {
		return "chat/chat_websocket";
	}
	
	@GetMapping(value = "/roomsList", produces = { MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_VALUE })
	@ResponseBody
	public ResponseEntity<List<Map<String, Object>>> roomsList() {
		
		List<Map<String, Object>> list = new ArrayList<Map<String,Object>>();
		
		Set<String> roomsSet = Data.roomsMap.keySet();
		
		for (String room : roomsSet) {
			List<WebSocketSession> sessionList = Data.roomsMap.get(room);
			
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("room", room);
			map.put("size", sessionList.size());
			
			list.add(map);
		}
		
		return new ResponseEntity<List<Map<String,Object>>>(list, HttpStatus.OK);
	}
	
	@GetMapping(value = "/checkRoomNameDuplicate", produces = { MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_VALUE })
	@ResponseBody
	public ResponseEntity<Boolean> checkRoomNameDuplicate(String room) {
		Set<String> roomsSet = Data.roomsMap.keySet();
		boolean isRoomDuplicate = roomsSet.contains(room);
		
		return new ResponseEntity<Boolean>(isRoomDuplicate, HttpStatus.OK);
	}
	
	@GetMapping(value = "/checkNicknameDuplicate", produces = { MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_VALUE })
	@ResponseBody
	public ResponseEntity<Boolean> checkNicknameDuplicate(String room, String nickname) {
		List<WebSocketSession> sessionList = Data.roomsMap.get(room);
		
		boolean isNicknameDuplicate = false;
		for (WebSocketSession session : sessionList) {
			RoomAndNickname roomAndNickname = Data.sessionIdAndRoomMap.get(session.getId());
			if (roomAndNickname.getNickname().equals(nickname)) {
				isNicknameDuplicate = true;
				break;
			}
		} // for
		
		return new ResponseEntity<Boolean>(isNicknameDuplicate, HttpStatus.OK);
	}
	
	@GetMapping(value = "/participants", produces = { MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_VALUE })
	@ResponseBody
	public ResponseEntity<List<String>> participants(String room) {
		
		List<String> nicknameList = new ArrayList<>();
		
		List<WebSocketSession> sessionList = Data.roomsMap.get(room);
		if (sessionList != null) {
			for (WebSocketSession session : sessionList) {
				RoomAndNickname roomAndNickname = Data.sessionIdAndRoomMap.get(session.getId());
				String nickname = roomAndNickname.getNickname();
				nicknameList.add(nickname);
			}
		}
		
		return new ResponseEntity<List<String>>(nicknameList, HttpStatus.OK);
	}
	
	@GetMapping("/chatWindow")
	public String chatWindow(String room, String nickname, Model model) {
		model.addAttribute("room", room);
		model.addAttribute("nickname", nickname);
		return "chat/chatWindow";
	}
	
	
	
}
