package banjjok.service.pet;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import banjjok.command.PetCommand;
import banjjok.domain.AuthInfo;
import banjjok.domain.MyPetDTO;
import banjjok.mapper.MyPetMapper;

@Service
public class AddPetService {
	@Autowired
	MyPetMapper petMapper;

	public void registPet(PetCommand petCommand, HttpSession session) throws Exception {
		String memId = ((AuthInfo) session.getAttribute("authInfo")).getUserId();
		MyPetDTO petDTO = new MyPetDTO();
		petDTO.setAge(petCommand.getAge());
		petDTO.setGender(petCommand.getGender());
		petDTO.setIsNeutral(petCommand.getIsNeutral());
		petDTO.setKind(petCommand.getKind());
		petDTO.setMicroNum(petCommand.getMicroNum());
		petDTO.setPetDesc(petCommand.getPetDesc());
		petDTO.setPetName(petCommand.getPetName());
		petDTO.setWeight(petCommand.getWeight());
		petDTO.setMemId(memId);
		petDTO.setPetRep("0");
		petDTO.setPetSize(petCommand.getPetSize());
		petDTO.setBreed(petCommand.getBreed());
		petMapper.insertMyPet(petDTO);
	}

}
