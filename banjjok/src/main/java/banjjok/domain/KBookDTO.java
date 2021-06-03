package banjjok.domain;

public class KBookDTO {
	// Booking
	String bCode;
	String memId;
	String bRequest;

	// Booking_list
	String bLDate;
	String bLTime;
	String pCode;
	String bLTester;

	public KBookDTO() {
		super();
	}

	public KBookDTO(String bCode, String memId, String bRequest) {
		super();
		this.bCode = bCode;
		this.memId = memId;
		this.bRequest = bRequest;
	}

	public KBookDTO(String bCode, String bLDate, String bLTime, String pCode, String bLTester) {
		super();
		this.bCode = bCode;
		this.bLDate = bLDate;
		this.bLTime = bLTime;
		this.pCode = pCode;
		this.bLTester = bLTester;
	}

	public String getbCode() {
		return bCode;
	}

	public void setbCode(String bCode) {
		this.bCode = bCode;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getbRequest() {
		return bRequest;
	}

	public void setbRequest(String bRequest) {
		this.bRequest = bRequest;
	}

	public String getbLDate() {
		return bLDate;
	}

	public void setbLDate(String bLDate) {
		this.bLDate = bLDate;
	}

	public String getbLTime() {
		return bLTime;
	}

	public void setbLTime(String bLTime) {
		this.bLTime = bLTime;
	}

	public String getpCode() {
		return pCode;
	}

	public void setpCode(String pCode) {
		this.pCode = pCode;
	}

	public String getbLTester() {
		return bLTester;
	}

	public void setbLTester(String bLTester) {
		this.bLTester = bLTester;
	}

}
