package banjjok.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.domain.LoginDTO;
import banjjok.domain.MemberDTO;
import banjjok.mapper.LoginMapper;


@Service
public class FindService {
	@Autowired
	LoginMapper loginMapper;

	public void find(String userPh, Model model) throws Exception {
		LoginDTO lDTO = loginMapper.find(userPh);
		model.addAttribute("dto", lDTO);
	}

}
