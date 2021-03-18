package banjjok.service.mem;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.command.SignUpCommand;
import banjjok.domain.MemberDTO;
import banjjok.domain.MyPetDTO;
import banjjok.mapper.MemberMapper;
import banjjok.mapper.MyPetMapper;

@Component
@Service
public class RegistService {
	@Autowired
	PasswordEncoder passwordEncoder;
	@Autowired
	MemberMapper memberMapper;
	@Autowired
	MyPetMapper myPetMapper;

	public String regist(SignUpCommand signUpCommand, Model model) throws Exception {
		String path = "";
		if(!signUpCommand.isEqualPw()) {
			model.addAttribute("notEqual", "비밀번호가 일치하지 않습니다.");
			path = "login/signUpForm";
		}
		// 문자인증 확인?
		// dto 저장
		MemberDTO dto = new MemberDTO();
		dto.setMemEmail(signUpCommand.getMemEmail());
		dto.setMemId(signUpCommand.getMemId());
		dto.setMemMobile(signUpCommand.getMemMobile());
		dto.setMemName(signUpCommand.getMemName());
		dto.setMemPw(passwordEncoder.encode(signUpCommand.getMemPw()));
		dto.setNicName(signUpCommand.getNicName());
		
		Integer member = memberMapper.insertMem(dto);
		
		MyPetDTO myPetDTO = new MyPetDTO();
		myPetDTO.setAge(signUpCommand.getAge());
		myPetDTO.setGender(signUpCommand.getGender());
		myPetDTO.setIsNeutral(signUpCommand.getIsNeutral());
		myPetDTO.setKind(signUpCommand.getKind());
		myPetDTO.setMicroNum(signUpCommand.getMicroNum());
		myPetDTO.setPetDesc(signUpCommand.getPetDesc());
		myPetDTO.setPetName(signUpCommand.getPetName());
		myPetDTO.setWeight(signUpCommand.getWeight());
		myPetDTO.setMemId(signUpCommand.getMemId());
		
		Integer pet = myPetMapper.insertMyPet(myPetDTO);
				
		path = (member > 0 && pet > 0) ? "redirect:/" : "login/signUpForm";
		
		return path;
//		return "redirect:/";
	}
	
}
