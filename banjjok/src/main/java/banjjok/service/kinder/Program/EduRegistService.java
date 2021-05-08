package banjjok.service.kinder.Program;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import banjjok.command.ProgramCommand;
import banjjok.domain.ProgramDTO;
import banjjok.mapper.ProgramMapper;

@Service
public class EduRegistService {
	@Autowired
	ProgramMapper programMapper;

	public String regist(ProgramCommand programCommand, Model model, HttpSession session) throws Exception {
		String root = "";
//		return "redirect:/banjjok/kinder/program";
		String pImg = "";
		
		String original = "";
		String store = "";
		String path = "/WEB-INF/view/kinder/upload";
		String photopath = session.getServletContext().getRealPath(path);
		
		MultipartFile mf = programCommand.getpImg();
		original = mf.getOriginalFilename();
		String originalFileExtension = original.substring(original.lastIndexOf("."));
		store = UUID.randomUUID().toString().replace("-", "") + originalFileExtension;
		pImg = original + "`" + store;
		
		// 사진 저장
		File file = new File(photopath + "/" + store);
		mf.transferTo(file);
		
		ProgramDTO dto = new ProgramDTO(programCommand.getpCode(), programCommand.getpName(), programCommand.getpPrice(), 
				programCommand.getpContent(), "1", programCommand.getpTeacher(), programCommand.getpTarget(), pImg, programCommand.getpCateg(), 
				programCommand.getpStart(), programCommand.getpEnd(), null);
		
		Integer result = programMapper.regist(dto);
		root = "redirect:/banjjok/kinder/program";
		return root;
	}

}
