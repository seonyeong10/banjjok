package banjjok.service.hotel.petSitter;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.domain.AuthInfo;
import banjjok.domain.PetSitterDTO;
import banjjok.mapper.PetSitterMapper;

@Service
@Component
public class PetSitterInfoService {
	@Autowired
	PetSitterMapper petSitterMapper;

	public void sitterInfo(HttpSession session, Model model) throws Exception {
		PetSitterDTO dto = new PetSitterDTO();
		AuthInfo authInfo = (AuthInfo) session.getAttribute("authInfo");
		List<PetSitterDTO> list = petSitterMapper.getSitterList(dto);
		model.addAttribute("list", list.get(0));
		
	}

}
