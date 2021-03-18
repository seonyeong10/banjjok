package banjjok.service.hotel.petSitter;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.command.PetSitterCommand;
import banjjok.domain.PetSitterDTO;
import banjjok.mapper.PetSitterMapper;

@Service
@Component
public class PetSitterDelService {
	@Autowired
	PetSitterMapper sitterMapper;
	@Autowired
	PasswordEncoder passwordEncoder;
	
	public void sitterDel(PetSitterCommand sitterCommand,Model model, HttpSession session) throws Exception {
		String location="";
		PetSitterDTO dto = new PetSitterDTO();
		String sitterId = sitterCommand.getSitterId();
		dto.setSitterId(sitterId);
		
		if(!passwordEncoder.matches(sitterCommand.getSitterPw(), dto.getSitterPw())) {
			System.out.println("비밀번호 틀림");
			model.addAttribute("PwErr", "비밀번호가 다릅니다.");
			location = "redirect:/hotel/hotelInfo/"+sitterId;
		}
		Integer cnt = null;
		cnt = sitterMapper.sitterDel(dto);
		
	}

}
