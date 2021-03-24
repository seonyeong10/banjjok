package banjjok.service.salon.desn;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.domain.AuthInfo;
import banjjok.domain.DesnDTO;
import banjjok.domain.StyleDTO;
import banjjok.mapper.DesnMapper;
import banjjok.mapper.StyleMapper;

@Service
public class DesnInfoService {
	@Autowired
	DesnMapper desnMapper;
	@Autowired
	StyleMapper styleMapper;
	
	public void getInfo(Model model, HttpSession session) throws Exception {
		DesnDTO dto = new DesnDTO();
		AuthInfo authInfo = (AuthInfo) session.getAttribute("authInfo");
		String desnId = authInfo.getUserId();
		dto.setDesnId(desnId);
		List<DesnDTO> list = desnMapper.getDesnList(dto);
		model.addAttribute("list", list.get(0));
		
	}
	public void show(String desnId, Model model) throws Exception {
		// 일반 사용자가 보는 화면
		DesnDTO dto = new DesnDTO();
		dto.setDesnId(desnId);
		List<DesnDTO> list = desnMapper.getDesnList(dto);
		model.addAttribute("list", list.get(0));
		
		// 스타일
		StyleDTO styleDTO = new StyleDTO();
		styleDTO.setDesnId(desnId);
		List<StyleDTO> styleList = styleMapper.getStyle(desnId);
		model.addAttribute("styleList", styleList);
	}
	
}
