package banjjok.command;

import java.sql.Timestamp;
import java.time.LocalDateTime;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

public class DesnCommand {
	@Size(min = 4, max = 12, message = "아이디를 입력하세요.")
	String desnId;
	@NotEmpty(message = "비밀번호를 입력하세요.")
	String desnPw;
	@NotBlank(message = "비밀번호 확인을 입력하세요.")
	String desnPwCon;
	@Size(min = 3, max = 12, message = "이름을 입력하세요.")
	String desnName;
	@Size(min = 13, message = "휴대폰번호를 입력하세요.")
	String desnPh;
	// 사진
	MultipartFile desnImg;
	@NotNull(message = "휴무일을 입력하세요.")
	String desnOff;
	@DateTimeFormat(iso = DateTimeFormat.ISO.DATE_TIME)
	LocalDateTime desnEnter;
	@NotNull(message = "직급을 입력하세요.")
	String desnUse;

	public boolean isEqualPw() {
		if (desnPw.equals(desnPwCon)) {
			return true;
		} else {
			return false;
		}
	}

	public MultipartFile getDesnImg() {
		return desnImg;
	}

	public void setDesnImg(MultipartFile desnImg) {
		this.desnImg = desnImg;
	}

	public String getDesnPh() {
		return desnPh;
	}

	public void setDesnPh(String desnPh) {
		this.desnPh = desnPh;
	}

	public String getDesnId() {
		return desnId;
	}

	public void setDesnId(String desnId) {
		this.desnId = desnId;
	}

	public String getDesnPw() {
		return desnPw;
	}

	public void setDesnPw(String desnPw) {
		this.desnPw = desnPw;
	}

	public String getDesnPwCon() {
		return desnPwCon;
	}

	public void setDesnPwCon(String desnPwCon) {
		this.desnPwCon = desnPwCon;
	}

	public String getDesnName() {
		return desnName;
	}

	public void setDesnName(String desnName) {
		this.desnName = desnName;
	}

	public String getDesnOff() {
		return desnOff;
	}

	public void setDesnOff(String desnOff) {
		this.desnOff = desnOff;
	}

	public LocalDateTime getDesnEnter() {
		return desnEnter;
	}

	public void setDesnEnter(LocalDateTime desnEnter) {
		this.desnEnter = desnEnter;
	}

	public String getDesnUse() {
		return desnUse;
	}

	public void setDesnUse(String desnUse) {
		this.desnUse = desnUse;
	}

}
