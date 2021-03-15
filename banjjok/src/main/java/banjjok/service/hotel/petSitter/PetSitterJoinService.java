package banjjok.service.hotel.petSitter;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import banjjok.command.PetSitterCommand;
import banjjok.domain.PetSitterDTO;
import banjjok.mapper.PetSitterMapper;

@Service
@Component
@Transactional
public class PetSitterJoinService {
	@Autowired
	PasswordEncoder passwordEncoder;
	@Autowired
	PetSitterMapper petSitterMapper;
	
	public Integer insertSitter(PetSitterCommand petSitterCommand, Model model, HttpSession session) {
		if(!petSitterCommand.isEqualPw()) {
			model.addAttribute("pwErr", "비밀번호가 일치하지 않습니다.");
			return null;
		}
		Integer cnt = null;
		PetSitterDTO petSitterDTO = new PetSitterDTO();
		petSitterDTO.setSitterPw(passwordEncoder.encode(petSitterCommand.getSitterPw()));
		petSitterDTO.setSitterId(petSitterCommand.getSitterId());
		petSitterDTO.setSitterName(petSitterCommand.getSitterName());
		
		String path = "/WEB-INF/view/hotel/petSitter/upload";
		String filePath = session.getServletContext().getRealPath(path);
		System.out.println(filePath);
		String sitterImg = "";
		String storeFileNames = "";
		if(petSitterCommand.getSitterImg() != null) {
			MultipartFile mf = petSitterCommand.getSitterImg();
			String original = mf.getOriginalFilename();
			if(!original.equals("")) {
				String extenstion = original.substring(original.lastIndexOf("."));
				String store = UUID.randomUUID().toString().replace("-", "") + extenstion;
				sitterImg = original + "`" + store;
				File file = new File(filePath + "/" + store);
				try {
					mf.transferTo(file);
				} catch (IllegalStateException | IOException e) {
					e.printStackTrace();
				}
			} else {
//				model.addAttribute("noImg", "이미지를 첨부해주세요.");
			}
			petSitterDTO.setSitterImg(sitterImg);
		}
		
		petSitterDTO.setSitterOff(petSitterCommand.getSitterOff());
		Timestamp sitterReg = Timestamp.valueOf(petSitterCommand.getSitterReg());
		petSitterDTO.setSitterReg(sitterReg);
		Timestamp sitterEnter = Timestamp.valueOf(petSitterCommand.getSitterEnter());
		petSitterDTO.setSitterEnter(sitterEnter);
		try {
			cnt = petSitterMapper.insertSitter(petSitterDTO);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(cnt == null) {
			// 인서트 안됨
			model.addAttribute("duplicate_sitterId", "사용중인 아이디입니다.");
		}
		return cnt;
	}

}
