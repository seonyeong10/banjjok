package banjjok.domain;

import java.sql.Timestamp;

public class TeacherDTO {
	String tId;
	String cCode;
	String tName;
	String tPw;
	String tPhoto;
	String tPh;
	String tState;	// 01(사회화) 02(단일) 03(종일)
	String tEmail;
	String shopCode;
	Timestamp tJoin;
	Timestamp tRegist;
	Timestamp tResign;
	String tNic;
	String tDuty;
	

	public String gettDuty() {
		return tDuty;
	}
	public void settDuty(String tDuty) {
		this.tDuty = tDuty;
	}
	public String gettId() {
		return tId;
	}
	public void settId(String tId) {
		this.tId = tId;
	}
	public String getcCode() {
		return cCode;
	}
	public void setcCode(String cCode) {
		this.cCode = cCode;
	}
	public String gettName() {
		return tName;
	}
	public void settName(String tName) {
		this.tName = tName;
	}
	public String gettPw() {
		return tPw;
	}
	public void settPw(String tPw) {
		this.tPw = tPw;
	}
	public String gettPhoto() {
		return tPhoto;
	}
	public void settPhoto(String tPhoto) {
		this.tPhoto = tPhoto;
	}
	public String gettPh() {
		return tPh;
	}
	public void settPh(String tPh) {
		this.tPh = tPh;
	}
	public String gettState() {
		return tState;
	}
	public void settState(String tState) {
		this.tState = tState;
	}
	public String gettEmail() {
		return tEmail;
	}
	public void settEmail(String tEmail) {
		this.tEmail = tEmail;
	}
	public String getShopCode() {
		return shopCode;
	}
	public void setShopCode(String shopCode) {
		this.shopCode = shopCode;
	}
	public Timestamp gettJoin() {
		return tJoin;
	}
	public void settJoin(Timestamp tJoin2) {
		this.tJoin = tJoin2;
	}
	public Timestamp gettRegist() {
		return tRegist;
	}
	public void settRegist(Timestamp tRegist) {
		this.tRegist = tRegist;
	}
	public Timestamp gettResign() {
		return tResign;
	}
	public void settResign(Timestamp tResign) {
		this.tResign = tResign;
	}
	public String gettNic() {
		return tNic;
	}
	public void settNic(String tNic) {
		this.tNic = tNic;
	}
	
	
}
