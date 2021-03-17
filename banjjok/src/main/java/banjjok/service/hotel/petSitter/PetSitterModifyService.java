package banjjok.service.hotel.petSitter;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;

import banjjok.command.PetSitterCommand;
import banjjok.domain.PetSitterDTO;
import banjjok.mapper.PetSitterMapper;

@Service
@Component
public class PetSitterModifyService {
	@Autowired
	PetSitterMapper sitterMapper;

	
	public void sitterModify(PetSitterCommand sitterCommand, Model model, HttpSession session) {
//		String location = null;
		PetSitterDTO dto = new PetSitterDTO();
		dto.setSitterId(sitterCommand.getSitterId());
		
	}

}
