package banjjok.service.kinder.teacher;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import banjjok.command.TeacherCommand;
import banjjok.domain.TeacherDTO;
import banjjok.mapper.TeacherMapper;

@Service
@Component
public class EnrollModifyOkService {
	
	@Autowired
	TeacherMapper teacherMapper;

	public void enrollModifyOk(TeacherCommand teacherCommand, HttpSession session) throws Exception {
		
		TeacherDTO dto = new TeacherDTO();
		dto.settId(teacherCommand.gettId());
		
		// img del
		dto = (TeacherDTO)teacherMapper.enrollListup(dto).get(0);
		String img = (String)session.getAttribute("imgList");
		String photopath = session.getServletContext().getRealPath("/WEB-INF/view/kinder/upload");
		
		// 리스트가 널이 아니면 세션에 저장된 이미지가 있다는 것
		// 세션에 저장된 정보 삭제
		if(img != null) {
			File file = new File(photopath + "/" + img);
			if(file.exists()) file.delete();
			session.removeAttribute("imagefile");
		}else {
			dto.settPhoto(dto.gettPhoto());
		}

		
		dto.settPh(teacherCommand.gettPh());
		dto.settEmail(teacherCommand.gettEmail());
		dto.settDuty(teacherCommand.gettDuty());
		dto.settState(teacherCommand.gettState());
		
		// 추가된 이미지가 있는지 확인
		//                            mf는 idEmpty 로 공백확인
		if(!teacherCommand.gettPhoto().isEmpty()) {
				String teacherPhoto = "";
				MultipartFile mf = teacherCommand.gettPhoto() ;
				String original = mf.getOriginalFilename();
				String Extension = original.substring(original.lastIndexOf("."));
				String store = UUID.randomUUID().toString().replace("-", "")+Extension;
				teacherPhoto = original + "`" + store;
				
				// 저장
				File file = new File(photopath + "/" +store);
				mf.transferTo(file);
				
				dto.settPhoto(teacherPhoto);
			
		}
		
		teacherMapper.enrollModify(dto);
	}

}
