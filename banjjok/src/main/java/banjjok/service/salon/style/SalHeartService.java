package banjjok.service.salon.style;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.command.SalHeartCommand;
import banjjok.domain.SalHeartDTO;
import banjjok.mapper.StyleMapper;

@Service
public class SalHeartService {
	@Autowired
	StyleMapper styleMapper;

	public void unlock(SalHeartCommand heartCommand, Model model) throws Exception {
		String heart = "";
		System.out.println(heartCommand.getHeart());
		System.out.println(heartCommand.getHeart().equals(""));
		if(heartCommand.getHeart().equals("")) {
			heart = "1";
			// 없으면 인서트
			SalHeartDTO heartDTO = new SalHeartDTO(heartCommand.getStyleCode(), heartCommand.getDesnId(), heartCommand.getMemId(), heart);
			styleMapper.insertHeart(heartDTO);
		} else {
			SalHeartDTO heartDTO = new SalHeartDTO(heartCommand.getStyleCode(), heartCommand.getDesnId(), heartCommand.getMemId(), heart);
			styleMapper.deleteHt(heartDTO);
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
