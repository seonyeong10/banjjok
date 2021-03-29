package banjjok.domain;

public class HotelPayDTO {
	String reservCode;
	Integer roomPrice;
	Integer addPrice;
	Integer totalPrice;
	String payMethod;
	public String getReservCode() {
		return reservCode;
	}
	public void setReservCode(String reservCode) {
		this.reservCode = reservCode;
	}
	public Integer getRoomPrice() {
		return roomPrice;
	}
	public void setRoomPrice(Integer roomPrice) {
		this.roomPrice = roomPrice;
	}
	public Integer getAddPrice() {
		return addPrice;
	}
	public void setAddPrice(Integer addPrice) {
		this.addPrice = addPrice;
	}
	public Integer getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(Integer totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getPayMethod() {
		return payMethod;
	}
	public void setPayMethod(String payMethod) {
		this.payMethod = payMethod;
	}
	
}
