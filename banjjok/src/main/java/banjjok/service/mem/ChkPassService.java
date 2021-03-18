package banjjok.service.mem;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.domain.AuthInfo;
import banjjok.domain.MemberDTO;
import banjjok.mapper.MemberMapper;

@Service
public class ChkPassService {
	@Autowired
	MemberMapper memberMapper;
	@Autowired
	PasswordEncoder passwordEncoder;

	public String check(String memPw, Model model, HttpSession session) throws Exception {
		String path = "";
		MemberDTO dto = new MemberDTO();
		String memId = ((AuthInfo) session.getAttribute("authInfo")).getUserId();
		dto.setMemId(memId);
		dto = memberMapper.getUserList(dto).get(0);
		
		if(passwordEncoder.matches(memPw, dto.getMemPw())) {
			System.out.println("일치");
			path = "member/memModify";
		} else {
			System.out.println("불일치");
			model.addAttribute("pwErr", "비밀번호가 일치하지 않습니다.");
			path = "member/checkPw";
		}
		return path;
	}
	
}
