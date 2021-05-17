package banjjok.service.kinder.Program;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import banjjok.domain.AuthInfo;
import banjjok.domain.ProgramDTO;
import banjjok.mapper.ProgramMapper;
import banjjok.service.FileDeleleter;

@Service
public class EduDelService {
	@Autowired
	ProgramMapper programMapper;

	public void delete(String pCode, String file, HttpSession session) throws Exception {
		ProgramDTO dto = new ProgramDTO();
		dto.setpCode(pCode);
		String tId = (String) ((AuthInfo) session.getAttribute("authInfo")).getUserId();
		dto.setpTeacher(tId);
		
		List<String> list = new ArrayList<String>();
		list.add(file);
		session.setAttribute("imgList", list);
		
		programMapper.delete(dto);
		
		// 파일 삭제
		FileDeleleter deleter = new FileDeleleter();
		String path = "/WEB-INF/view/kinder/upload";
		deleter.fileDel(session, path);
		
	}

}
