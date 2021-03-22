package banjjok.service.pet;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import banjjok.command.PetCommand;
import banjjok.domain.AuthInfo;
import banjjok.domain.MyPetDTO;
import banjjok.mapper.MyPetMapper;

@Service
public class PetModifyService {
	@Autowired
	MyPetMapper petMapper;

	public void petModify(PetCommand petCommand, HttpSession session) throws Exception {
		String memId = ((AuthInfo) session.getAttribute("authInfo")).getUserId();
		MyPetDTO petDTO = new MyPetDTO();
		petDTO.setPetId(petCommand.getPetId());
		petDTO.setAge(petCommand.getAge());
		petDTO.setGender(petCommand.getGender());
		petDTO.setMemId(memId);
		petDTO.setWeight(petCommand.getWeight());
		petDTO.setPetDesc(petCommand.getPetDesc());
		petDTO.setMicroNum(petCommand.getMicroNum());
		petDTO.setPetName(petCommand.getPetName());
		petMapper.updatePet(petDTO);
	}
	
}
