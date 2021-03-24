package banjjok.command;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import org.springframework.web.multipart.MultipartFile;

public class StyleCommand {
	@NotEmpty(message = "카테고리를 선택해주세요.")
	String styleCateg;
	@NotEmpty(message = "이름을 입력해주세요.")
	String styleName;
	@NotEmpty(message = "길이를 선택해주세요.")
	String styleLength;
	@NotEmpty(message = "곱슬정도를 선택해주세요.")
	String styleCurly;
	@NotEmpty(message = "설명을 입력해주세요.")
	String styleDesc;
	MultipartFile styleImg;

	public String getStyleCateg() {
		return styleCateg;
	}

	public void setStyleCateg(String styleCateg) {
		this.styleCateg = styleCateg;
	}

	public String getStyleName() {
		return styleName;
	}

	public void setStyleName(String styleName) {
		this.styleName = styleName;
	}

	public String getStyleLength() {
		return styleLength;
	}

	public void setStyleLength(String styleLength) {
		this.styleLength = styleLength;
	}

	public String getStyleCurly() {
		return styleCurly;
	}

	public void setStyleCurly(String styleCurly) {
		this.styleCurly = styleCurly;
	}

	public String getStyleDesc() {
		return styleDesc;
	}

	public void setStyleDesc(String styleDesc) {
		this.styleDesc = styleDesc;
	}

	public MultipartFile getStyleImg() {
		return styleImg;
	}

	public void setStyleImg(MultipartFile styleImg) {
		this.styleImg = styleImg;
	}
	

}
