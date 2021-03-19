package banjjok.command;

import javax.validation.constraints.NotEmpty;

import org.springframework.web.multipart.MultipartFile;

public class RoomCommand {
	@NotEmpty(message = "객실코드를 입력하세요.")
	String RoomCode;
	String RoomName;
	MultipartFile RoomImg;
	MultipartFile[] RoomImg_mapVer;
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
	
	
	
	public MultipartFile[] getRoomImg_mapVer() {
		return RoomImg_mapVer;
	}
	public void setRoomImg_mapVer(MultipartFile[] roomImg_mapVer) {
		RoomImg_mapVer = roomImg_mapVer;
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
