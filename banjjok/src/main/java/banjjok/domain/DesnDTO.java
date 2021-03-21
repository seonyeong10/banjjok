package banjjok.domain;

import java.sql.Timestamp;

public class DesnDTO {
//	DESN_ID, DESN_PW, DESN_NAME, DESN_IMG, DESN_PH, DESN_OFF, DESN_ENTER, DESN_REG, DESN_LEAVE, DESN_USE
	String desnId;
	String desnPw;
	String desnName;
	String desnImg;
	String desnPh;
	String desnOff;
	Timestamp desnEnter;
	Timestamp desnReg;
	Timestamp desnLeave;
	String desnUse;	// 1 원장, 2 수석디자이너, 3 디자이너, 4 퇴사자

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

	public String getDesnName() {
		return desnName;
	}

	public void setDesnName(String desnName) {
		this.desnName = desnName;
	}

	public String getDesnImg() {
		return desnImg;
	}

	public void setDesnImg(String desnImg) {
		this.desnImg = desnImg;
	}

	public String getDesnPh() {
		return desnPh;
	}

	public void setDesnPh(String desnPh) {
		this.desnPh = desnPh;
	}

	public String getDesnOff() {
		return desnOff;
	}

	public void setDesnOff(String desnOff) {
		this.desnOff = desnOff;
	}

	public Timestamp getDesnEnter() {
		return desnEnter;
	}

	public void setDesnEnter(Timestamp desnEnter) {
		this.desnEnter = desnEnter;
	}

	public String getDesnUse() {
		return desnUse;
	}

	public void setDesnUse(String desnUse) {
		this.desnUse = desnUse;
	}

	public Timestamp getDesnReg() {
		return desnReg;
	}

	public void setDesnReg(Timestamp desnReg) {
		this.desnReg = desnReg;
	}

	public Timestamp getDesnLeave() {
		return desnLeave;
	}

	public void setDesnLeave(Timestamp desnLeave) {
		this.desnLeave = desnLeave;
	}

}
