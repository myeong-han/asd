package com.exam.interceptor;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.server.ServerHttpRequest;
import org.springframework.http.server.ServerHttpResponse;
import org.springframework.http.server.ServletServerHttpRequest;
import org.springframework.web.socket.WebSocketHandler;
import org.springframework.web.socket.server.support.HttpSessionHandshakeInterceptor;

public class MyHttpSessionHandshakeInterceptor extends HttpSessionHandshakeInterceptor {

	@Override
	public boolean beforeHandshake(ServerHttpRequest request, ServerHttpResponse response, WebSocketHandler wsHandler,
			Map<String, Object> attributes) throws Exception {
		
		// 위의 파라미터 중, attributes 에 값을 저장하면 웹소켓 핸들러 클래스의 WebSocketSession에 전달된다.
        System.out.println("Before Handshake");
        
        System.out.println("URI: " + request.getURI());
        
        ServletServerHttpRequest ssreq = (ServletServerHttpRequest) request;
        HttpServletRequest req = ssreq.getServletRequest();
        
        String room = req.getParameter("room");
        String nickname = req.getParameter("nickname");
        System.out.println("room: " + room + ", nickname: " + nickname);
        
        //HttpSession session = req.getSession(); // 세션에 저장된 데이터 추출 시 
        
        attributes.put("room", room);
        attributes.put("nickname", nickname);
        
		return super.beforeHandshake(request, response, wsHandler, attributes);
	}

	@Override
	public void afterHandshake(ServerHttpRequest request, ServerHttpResponse response, WebSocketHandler wsHandler,
			Exception ex) {
		
		System.out.println("After Handshake");
		
		super.afterHandshake(request, response, wsHandler, ex);
	}
	
}
