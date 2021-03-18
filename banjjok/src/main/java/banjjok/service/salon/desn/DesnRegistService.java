package banjjok.service.salon.desn;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import banjjok.command.DesnCommand;
import banjjok.domain.DesnDTO;
import banjjok.mapper.DesnMapper;

@Component
@Service
public class DesnRegistService {
	@Autowired
	PasswordEncoder passwordEncoder;
	@Autowired
	DesnMapper desnMapper;

	public Integer registDesn(DesnCommand desnCommand, Model model, HttpSession session) throws Exception {
		if(!desnCommand.isEqualPw()) {
			model.addAttribute("pwErr", "비밀번호가 일치하지 않습니다.");
			return null;
		}
		Integer cnt = null;
		// dto 저장
		DesnDTO dto = new DesnDTO();
		dto.setDesnId(desnCommand.getDesnId());	//아이디
		dto.setDesnPw(passwordEncoder.encode(desnCommand.getDesnPw()));	// 비번
		dto.setDesnName(desnCommand.getDesnName());	// 이름
		dto.setDesnPh(desnCommand.getDesnPh());	// 연락처
		dto.setDesnOff(desnCommand.getDesnOff());	// 휴무일
		Timestamp desnEnter = Timestamp.valueOf(desnCommand.getDesnEnter());	// 입사일
		dto.setDesnEnter(desnEnter);
		dto.setDesnUse(desnCommand.getDesnUse());	// 사용여부
		
		String path = "/WEB-INF/view/salon/designer/upload";
		String filePath = session.getServletContext().getRealPath(path);
		System.out.println(filePath);
		String desnImg = "";
		String storeFileNames = "";
		if(desnCommand.getDesnImg() != null) {
			MultipartFile mf = desnCommand.getDesnImg();
			String original = mf.getOriginalFilename();
			if(!original.equals("")) {
				String extenstion = original.substring(original.lastIndexOf("."));
				String store = UUID.randomUUID().toString().replace("-", "") + extenstion;
				desnImg = original + "`" + store;
				File file = new File(filePath + "/" + store);
				try {
					mf.transferTo(file);
				} catch (IllegalStateException | IOException e) {
					e.printStackTrace();
				}
			} else {
				model.addAttribute("noImg", "이미지를 첨부해주세요.");
			}
			dto.setDesnImg(desnImg);
		}
		
		cnt = desnMapper.insertEmp(dto);
		return cnt;
	}

	
}
