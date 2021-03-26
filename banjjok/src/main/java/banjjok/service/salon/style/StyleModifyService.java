package banjjok.service.salon.style;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.domain.StyleDTO;
import banjjok.mapper.StyleMapper;

@Service
public class StyleModifyService {
	@Autowired
	StyleMapper styleMapper;
	public void modifyStyle(String styleCode, Model model) throws Exception {
		StyleDTO dto = new StyleDTO();
		dto.setStyleCode(styleCode);
		List<StyleDTO> list = styleMapper.getStyle(dto);
		model.addAttribute("list", list.get(0));
	}

}
