package banjjok.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import banjjok.command.LoginCommand;
import banjjok.domain.LoginDTO;
import banjjok.mapper.LoginMapper;

@Service
public class ChangePwService {
	@Autowired
	PasswordEncoder passwordEncoder;
	@Autowired
	LoginMapper loginMapper;

	public void change(LoginCommand loginCommand, HttpSession session) throws Exception {
		LoginDTO dto = new LoginDTO();
		dto.setUserPw(passwordEncoder.encode(loginCommand.getUserPw()));
		dto.setGrade((String) session.getAttribute("grade"));
		loginMapper.updatePw(dto);
	}

}
