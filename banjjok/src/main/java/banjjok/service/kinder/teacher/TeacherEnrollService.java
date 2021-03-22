package banjjok.service.kinder.teacher;

import java.io.File;
import java.sql.Timestamp;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import banjjok.command.TeacherCommand;
import banjjok.domain.TeacherDTO;
import banjjok.mapper.TeacherMapper;

@Service
@Component
public class TeacherEnrollService {
	
	@Autowired
	PasswordEncoder passwordEncoder;
	@Autowired
	TeacherMapper teacherMapper;
	
	public Integer insertTeacher(TeacherCommand teacherCommand, Model model, HttpSession session) throws Exception{
		
//		System.out.println(teacherCommand.getShopCode());
//		System.out.println(teacherCommand.gettId());
//		System.out.println(teacherCommand.gettPw());
//		System.out.println(teacherCommand.gettName());
//		System.out.println(teacherCommand.gettPh());
//		System.out.println(teacherCommand.gettState());
//		System.out.println(teacherCommand.gettEmail());
//		System.out.println(teacherCommand.gettJoin());
//		System.out.println(teacherCommand.getcCode());
//		System.out.println(teacherCommand.gettDuty());
		
		//pwcon 
		
		if(!teacherCommand.isTPwEqualToTPwCon()) {
			model.addAttribute("valid_tPwCon", "Not Correct the Password");
			return -1 ;
		}
		
		//setting
		
		TeacherDTO dto = new TeacherDTO();
		
		dto.setShopCode(teacherCommand.getShopCode());
		dto.settId(teacherCommand.gettId());
		dto.settPw(passwordEncoder.encode(teacherCommand.gettPw()));
		dto.settName(teacherCommand.gettName());
		dto.settPh(teacherCommand.gettPh());
		dto.settState(teacherCommand.gettState());
		dto.settEmail(teacherCommand.gettEmail());
		dto.settJoin(teacherCommand.gettJoin());
		dto.setcCode(teacherCommand.getcCode());
		dto.settDuty(teacherCommand.gettDuty());
		
		
		// photo file
		String teacherPhoto = "";
		String original = "";
		String store = "";
		String path = "/WEB-INF/view/kinder/upload";
		String photopath = session.getServletContext().getRealPath(path);
		
		MultipartFile mf = teacherCommand.gettPhoto();
		original = mf.getOriginalFilename();
		String originalFileExtension = original.substring(original.lastIndexOf("."));
		store = UUID.randomUUID().toString().replace("-", "") + originalFileExtension;
		teacherPhoto = original + "`" + store;
		
		// 사진 저장
		File file = new File(photopath + "/" + store);
		mf.transferTo(file);
		
		dto.settPhoto(teacherPhoto);
		
		
		
		
		// 리턴값 사용
//		resultdata = teacherMapper.teacherInsert(dto);
//		return resultdata;
		return teacherMapper.teacherInsert(dto);
	}
}
