package banjjok.domain;

import java.sql.Timestamp;

public class PetSitterDTO {
	String sitterId;
	String sitterPw;
	String sitterName;
	String sitterImg;
	String sitterPh;
	String sitterOff;
	Timestamp sitterEnter;
	Timestamp sitterReg;
	Timestamp sitterLeave;
	String sitterUse;
	
	public String getSitterId() {
		return sitterId;
	}
	public void setSitterId(String sitterId) {
		this.sitterId = sitterId;
	}
	public String getSitterPw() {
		return sitterPw;
	}
	public void setSitterPw(String sitterPw) {
		this.sitterPw = sitterPw;
	}
	public String getSitterName() {
		return sitterName;
	}
	public void setSitterName(String sitterName) {
		this.sitterName = sitterName;
	}
	public String getSitterImg() {
		return sitterImg;
	}
	public void setSitterImg(String sitterImg) {
		this.sitterImg = sitterImg;
	}
	public String getSitterPh() {
		return sitterPh;
	}
	public void setSitterPh(String sitterPh) {
		this.sitterPh = sitterPh;
	}
	public String getSitterOff() {
		return sitterOff;
	}
	public void setSitterOff(String sitterOff) {
		this.sitterOff = sitterOff;
	}
	public Timestamp getSitterEnter() {
		return sitterEnter;
	}
	public void setSitterEnter(Timestamp sitterEnter) {
		this.sitterEnter = sitterEnter;
	}
	public Timestamp getSitterReg() {
		return sitterReg;
	}
	public void setSitterReg(Timestamp sitterReg) {
		this.sitterReg = sitterReg;
	}
	public Timestamp getSitterLeave() {
		return sitterLeave;
	}
	public void setSitterLeave(Timestamp sitterLeave) {
		this.sitterLeave = sitterLeave;
	}
	public String getSitterUse() {
		return sitterUse;
	}
	public void setSitterUse(String sitterUse) {
		this.sitterUse = sitterUse;
	}
	
}
