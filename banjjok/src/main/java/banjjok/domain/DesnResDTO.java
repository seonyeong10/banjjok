package banjjok.domain;

import java.sql.Timestamp;

public class DesnResDTO {
	/**
	 * 메뉴 예약 시, 예약시간 중복 방지
	 */
	String desnId;
	Timestamp reservDate;

	public String getDesnId() {
		return desnId;
	}

	public void setDesnId(String desnId) {
		this.desnId = desnId;
	}

	public Timestamp getReservDate() {
		return reservDate;
	}

	public void setReservDate(Timestamp reservDate) {
		this.reservDate = reservDate;
	}

}
