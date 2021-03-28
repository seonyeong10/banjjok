package banjjok.service.salon.style;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.domain.StyleDTO;
import banjjok.mapper.StyleMapper;

@Service
public class StyleDelService {
	@Autowired
	StyleMapper styleMapper;

	public void delete(String styleCode, String desnId, Model model) throws Exception {
		StyleDTO dto = new StyleDTO();
		dto.setDesnId(desnId);
		dto.setStyleCode(styleCode);
		Integer result = styleMapper.delete(dto);
		model.addAttribute("val", result);
	}

}
