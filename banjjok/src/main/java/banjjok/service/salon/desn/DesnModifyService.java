package banjjok.service.salon.desn;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import banjjok.command.DesnCommand;
import banjjok.domain.DesnDTO;
import banjjok.mapper.DesnMapper;

@Service
public class DesnModifyService {
	@Autowired
	DesnMapper desnMapper;
	@Autowired
	PasswordEncoder passwordEncoder;

	public String desnModify(DesnCommand desnCommand, Model model, HttpSession session) throws Exception {
		String location = null;
		DesnDTO dto = new DesnDTO();
		dto.setDesnId(desnCommand.getDesnId());
		dto = (DesnDTO) desnMapper.getDesnList(dto).get(0);

		// 파일삭제
		List<String> list = (List<String>) session.getAttribute("imgList");
		String filePath = session.getServletContext().getRealPath("/WEB-INF/view/salon/designer/upload");
		if (list != null) {
			for (int i = 0; i < list.size(); i++) {
				String img = list.get(i);
				dto.setDesnImg(dto.getDesnImg().replace(dto.getDesnImg(), ""));
				File file = new File(filePath + "/" + img);
				if (file.exists()) {
					file.delete();
				}
				session.removeAttribute("imgList");
			}
		}

		// 비밀번호 확인
		if (!passwordEncoder.matches(desnCommand.getDesnPw(), dto.getDesnPw())) {
			// 불일치
			location = "redirect:/salon/myPage";
		} else {
			String desnImg = "";
			// 일치
			dto.setDesnName(desnCommand.getDesnName());
			// 추가하는 파일이 있으면
			MultipartFile mf = desnCommand.getDesnImg();
			String original = mf.getOriginalFilename();
			if (!original.equals("")) {
				String originalFileExtension = original.substring(original.lastIndexOf("."));
				String store = UUID.randomUUID().toString().replace("-", "") + originalFileExtension;
				desnImg = original + "`" + store;
				File file = new File(filePath + "/" + store);
				mf.transferTo(file);
			} else {
				// 파일 추가 안하면 그대로
//				dto.setDesnImg(desnImg);
//				if(list == null) {
//					System.out.println("실행");
//					location = "redirect:/salon/myPage";
//				}
				desnImg = dto.getDesnImg();
				if(desnImg.equals("")) {
					location = "redirect:/salon/myPage";
				}
			}
			dto.setDesnImg(desnImg);
			System.out.println(desnImg);
			Integer result = desnMapper.updateDesn(dto);
			if(result > 0) {
				location = "redirect:/salon";
			}
		}

		return location;
	}

}
