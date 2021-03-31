package banjjok.service.salon.style;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.domain.DesnDTO;
import banjjok.domain.SalHeartDTO;
import banjjok.domain.StyleDTO;
import banjjok.domain.StyleInfoDTO;
import banjjok.mapper.StyleMapper;

@Service
public class StyleInfoService {
	@Autowired
	StyleMapper styleMapper;

	public void getInfo(String styleCode, Model model) throws Exception {
		StyleInfoDTO dto = new StyleInfoDTO();
		dto.setStyleCode(styleCode);
		dto = styleMapper.getStyleInfo(dto);
		model.addAttribute("style", dto);
		
		String desnId = dto.getDesnId();
		StyleDTO styleDTO = new StyleDTO();
		styleDTO.setDesnId(desnId);
		List<StyleDTO> list = styleMapper.getStyle(styleDTO);
		model.addAttribute("list", list);
		
		SalHeartDTO heartDTO = new SalHeartDTO();
		heartDTO.setStyleCode(styleCode);
		Integer htCount = styleMapper.getHtCount(heartDTO);
		model.addAttribute("htCount", htCount);
	}

}
