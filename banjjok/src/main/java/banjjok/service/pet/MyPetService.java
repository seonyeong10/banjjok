package banjjok.service.pet;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.domain.AuthInfo;
import banjjok.domain.MyPetDTO;
import banjjok.mapper.MyPetMapper;

@Service
public class MyPetService {
	@Autowired
	MyPetMapper myPetMapper;

	public void getMyPet(HttpSession session, Model model) throws Exception {
		MyPetDTO myPetDTO = new MyPetDTO();
		String memId = ((AuthInfo) session.getAttribute("authInfo")).getUserId();
		myPetDTO.setMemId(memId);
		List<MyPetDTO> list = myPetMapper.getMyPet(myPetDTO);
		model.addAttribute("list", list);
	}

}
