package banjjok.service;

import java.util.Collection;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.domain.LoginDTO;
import banjjok.mapper.LoginMapper;

@Service
public class IsExistService {
	@Autowired
	LoginMapper loginMapper;

	public void isExist(String userId, Model model, HttpSession session) throws Exception {
		Integer cnt = 0;
		LoginDTO dto = new LoginDTO();
		
		dto.setUserId(userId);
		List<LoginDTO> list = loginMapper.getUsers(dto);
		if(list.size() != 0) {
			cnt = 1;
			session.setAttribute("grade", list.get(0).getGrade());
		}
		
		model.addAttribute("val", cnt);
	}

}
