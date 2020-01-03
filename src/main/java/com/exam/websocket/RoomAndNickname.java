package com.exam.websocket;

public class RoomAndNickname {
	private String room;
	private String nickname;
	
	public RoomAndNickname() {
	}
	
	public RoomAndNickname(String room, String nickname) {
		this.room = room;
		this.nickname = nickname;
	}

	public String getRoom() {
		return room;
	}
	public void setRoom(String room) {
		this.room = room;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	@Override
	public String toString() {
		return "RoomAndNickname [room=" + room + ", nickname=" + nickname + "]";
	}
}
