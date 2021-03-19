package banjjok.command;

import java.sql.Timestamp;
import java.time.LocalDateTime;

import javax.validation.constraints.NotEmpty;

import org.springframework.web.multipart.MultipartFile;

public class TeacherCommand {
	@NotEmpty(message = "Enter the Shop Code")
	String shopCode;
	@NotEmpty(message = "Enter the Teacher Id")
	String tId;
	@NotEmpty(message = "Enter the Teacher Password")
	String tPw;
	@NotEmpty(message = "Confirm the Teacher Password")
	String tPwCon;
	@NotEmpty(message = "Enter the Teacher Name")
	String tName;
	@NotEmpty(message = "Enter the Phone Number")
	String tPh;
	@NotEmpty(message = "Enter the Email Address")
	String tEmail;
	@NotEmpty(message = "Enter the Entrada")
	String tJoin;
	
	MultipartFile tPhoto;
	@NotEmpty(message = "Allocate the Teacher's position")
	String cCode;
	@NotEmpty(message = "Enter the Present Statement")
	String tState;
	
	
	//pwcon
	public boolean isTPwEqualToTPwCon() {
		if(tPw.equals(tPwCon)) {
			return true;
		}else {
		return false;
		}
	}
	
	public String gettPwCon() {
		return tPwCon;
	}
	public void settPwCon(String tPwCon) {
		this.tPwCon = tPwCon;
	}
	public String getShopCode() {
		return shopCode;
	}
	public void setShopCode(String shopCode) {
		this.shopCode = shopCode;
	}
	public String gettId() {
		return tId;
	}
	public void settId(String tId) {
		this.tId = tId;
	}
	public String gettPw() {
		return tPw;
	}
	public void settPw(String tPw) {
		this.tPw = tPw;
	}
	public String gettName() {
		return tName;
	}
	public void settName(String tName) {
		this.tName = tName;
	}
	public String gettPh() {
		return tPh;
	}
	public void settPh(String tPh) {
		this.tPh = tPh;
	}
	public String gettEmail() {
		return tEmail;
	}
	public void settEmail(String tEmail) {
		this.tEmail = tEmail;
	}
	public String gettJoin() {
		return tJoin;
	}
	public void settJoin(String tJoin) {
		this.tJoin = tJoin;
	}
	public MultipartFile gettPhoto() {
		return tPhoto;
	}
	public void settPhoto(MultipartFile tPhoto) {
		this.tPhoto = tPhoto;
	}
	public String getcCode() {
		return cCode;
	}
	public void setcCode(String cCode) {
		this.cCode = cCode;
	}
	public String gettState() {
		return tState;
	}
	public void settState(String tState) {
		this.tState = tState;
	}
	
	
}
