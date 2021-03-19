package banjjok.domain;

import org.springframework.web.multipart.MultipartFile;

public class RoomDTO {
	String RoomCode;
	String RoomName;
	MultipartFile RoomImg;
	Integer RoomPrice;
	String RoomDesc;
	public String getRoomCode() {
		return RoomCode;
	}
	public void setRoomCode(String roomCode) {
		RoomCode = roomCode;
	}
	public String getRoomName() {
		return RoomName;
	}
	public void setRoomName(String roomName) {
		RoomName = roomName;
	}
	public MultipartFile getRoomImg() {
		return RoomImg;
	}
	public void setRoomImg(MultipartFile roomImg) {
		RoomImg = roomImg;
	}
	public Integer getRoomPrice() {
		return RoomPrice;
	}
	public void setRoomPrice(Integer roomPrice) {
		RoomPrice = roomPrice;
	}
	public String getRoomDesc() {
		return RoomDesc;
	}
	public void setRoomDesc(String roomDesc) {
		RoomDesc = roomDesc;
	}
	
	
}
