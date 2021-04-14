package banjjok.service.salon.style;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.command.SalHeartCommand;
import banjjok.domain.AuthInfo;
import banjjok.domain.SalHeartDTO;
import banjjok.mapper.StyleMapper;

@Service
public class SalHeartService {
	@Autowired
	StyleMapper styleMapper;

	public void unlock(SalHeartCommand heartCommand, HttpSession session, Model model) throws Exception {
		String memId = ((AuthInfo) session.getAttribute("authInfo")).getUserId();
		// 데이터베이스에 관심등록이 되어있는지 확인
		SalHeartDTO heartDTO = new SalHeartDTO(heartCommand.getStyleCode(), heartCommand.getDesnId(), memId);
		String heart = styleMapper.isHeart(heartDTO);
		System.out.println(heart);
		System.out.println("isLocked? " + (heart == null));
		if(heart == null) {
			// 없으면 인서트
			styleMapper.insertHeart(heartDTO);
		} else {
			heart = heart.equals("1") ? "0" : "1";
			heartDTO = new SalHeartDTO(heartCommand.getStyleCode(), heartCommand.getDesnId(), memId, heart);
			styleMapper.updateHt(heartDTO);
		}
		
//		model.addAttribute("val", heart);
//		
//		SalHeartDTO heartDTO = new SalHeartDTO();
//		heartDTO.setMemId(heartCommand.getMemId());
//		heartDTO.setDesnId(heartCommand.getDesnId());
//		List<SalHeartDTO> heartList = styleMapper.getHeart(heartDTO);
//		model.addAttribute("isHeart", heartList);
		
	}

}
