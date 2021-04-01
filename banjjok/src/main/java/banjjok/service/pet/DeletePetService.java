package banjjok.service.pet;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import banjjok.domain.AuthInfo;
import banjjok.domain.MyPetDTO;
import banjjok.mapper.MyPetMapper;

@Service
public class DeletePetService {
	@Autowired
	MyPetMapper myPetMapper;
	
	public void delete(String petId, HttpSession session) throws Exception {
		String memId = ((AuthInfo) session.getAttribute("authInfo")).getUserId();
		MyPetDTO dto = new MyPetDTO();
		dto.setPetId(petId);
		dto.setMemId(memId);
		myPetMapper.delete(dto);
	}

}
