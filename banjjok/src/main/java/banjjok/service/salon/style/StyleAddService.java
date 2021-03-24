package banjjok.service.salon.style;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import banjjok.command.StyleCommand;
import banjjok.domain.AuthInfo;
import banjjok.domain.StyleDTO;
import banjjok.mapper.StyleMapper;

@Service
public class StyleAddService {
	@Autowired
	StyleMapper styleMapper;

	public String add(StyleCommand styleCommand, HttpSession session, Model model) throws Exception {
		String location = null;
		// 오류처리
		if(styleCommand.getStyleImg().isEmpty()) {
			model.addAttribute("noImg", "사진을 첨부해주세요.");
			return "salon/designer/styleBook/styleForm";
		}
		// db저장
		String desnId = ((AuthInfo) session.getAttribute("authInfo")).getUserId();
		// 사진
		String path = "/WEB-INF/view/salon/designer/styleBook/upload";
		String filePath = session.getServletContext().getRealPath(path);
		String styleImg = "";
		MultipartFile mf = styleCommand.getStyleImg();
		String original = mf.getOriginalFilename();
		String extension = original.substring(original.lastIndexOf("."));
		String store = UUID.randomUUID().toString().replace("-", "") + extension;
		styleImg = store;
		File file = new File(filePath + "/" + store);
		try {
			mf.transferTo(file);
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		// 코드
		String styleCode = styleMapper.getCode();
		StyleDTO dto = new StyleDTO(styleCode, desnId, styleCommand.getStyleCateg(), styleCommand.getStyleName(), 
				styleCommand.getStyleLength(), styleCommand.getStyleCurly(), styleCommand.getStyleDesc(), styleImg);
		Integer result = styleMapper.insert(dto);
		location = result > 0 ? "redirect:/" : "salon/designer/styleBook/styleForm";
		return location;
	}

}
