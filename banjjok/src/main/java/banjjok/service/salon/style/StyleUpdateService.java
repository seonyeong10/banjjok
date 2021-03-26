package banjjok.service.salon.style;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import banjjok.command.StyleCommand;
import banjjok.domain.StyleDTO;
import banjjok.mapper.StyleMapper;

@Service
public class StyleUpdateService {
	@Autowired
	StyleMapper styleMapper;

	public void update(StyleCommand styleCommand, HttpSession session) throws Exception {
		String styleImg = "";
		StyleDTO dto = new StyleDTO();
		String styleCode = styleCommand.getStyleCode();
		dto.setStyleCode(styleCode);
		dto = styleMapper.getStyle(dto).get(0);
		
		// 파일삭제
		List<String> list = (List<String>) session.getAttribute("imgList");
		String filePath = session.getServletContext().getRealPath("/WEB-INF/view/salon/designer/styleBook/upload");
		if (list != null) {
			for (int i = 0; i < list.size(); i++) {
				String img = list.get(i);
				dto.setStyleImg(dto.getStyleImg().replace(dto.getStyleImg(), ""));
				File file = new File(filePath + "/" + img);
				if (file.exists()) {
					file.delete();
				}
				session.removeAttribute("imgList");
			}
		}
		
		MultipartFile mf = styleCommand.getStyleImg();
		String original = mf.getOriginalFilename();
		if(!original.equals("")) {
			String originalFileExtension = original.substring(original.lastIndexOf("."));
			String store = UUID.randomUUID().toString().replace("-", "") + originalFileExtension;
			styleImg =store;
			File file = new File(filePath + "/" + store);
			mf.transferTo(file);
		} else {
			styleImg = dto.getStyleImg();
		}
		
		dto = new StyleDTO(styleCode, null, styleCommand.getStyleCateg(), styleCommand.getStyleName(), 
				styleCommand.getStyleLength(), styleCommand.getStyleCurly(), styleCommand.getStyleDesc(), styleImg);
		
		Integer result = styleMapper.update(dto);
	}

}
