package banjjok.service.salon.desn;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.domain.AuthInfo;
import banjjok.domain.DesnDTO;
import banjjok.domain.SalHeartDTO;
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
	public void show(String desnId, HttpSession session, Model model) throws Exception {
		// 일반 사용자가 보는 화면
		DesnDTO dto = new DesnDTO();
		dto.setDesnId(desnId);
		List<DesnDTO> list = desnMapper.getDesnList(dto);
		model.addAttribute("list", list.get(0));
		
		// 스타일
		StyleDTO styleDTO = new StyleDTO();
		styleDTO.setDesnId(desnId);
		List<StyleDTO> styleList = styleMapper.getStyle(styleDTO);
		model.addAttribute("styleList", styleList);
		
		// 스타일 총 개수
		Integer count = styleMapper.getCount(styleDTO);
		model.addAttribute("count", count);
		
		// 스타일 하트여부
		String memId = null;
		if(session.getAttribute("authInfo") != null) {
			memId = ((AuthInfo) session.getAttribute("authInfo")).getUserId();	// 회원 아이디
		}
		SalHeartDTO heartDTO = new SalHeartDTO();
		heartDTO.setMemId(memId);
		heartDTO.setDesnId(desnId);
		List<SalHeartDTO> heartList = styleMapper.getHeart(heartDTO);
		model.addAttribute("isHeart", heartList);
		
		// 하트 총 개수
		Integer htCount = styleMapper.getHtCount(heartDTO);
		model.addAttribute("htCount", htCount);
	}
	
}
