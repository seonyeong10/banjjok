package banjjok.service.kinder.teacher;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.multipart.MultipartFile;

import banjjok.command.ClassCommand;
import banjjok.domain.ClassDTO;
import banjjok.mapper.ClassMapper;


@Service
@Component
public class ClassEnrollService {
	
	@Autowired
	ClassMapper classMapper;
	
	public Integer insertClass(ClassCommand classCommand, BindingResult result,
			Model model, HttpSession session) throws Exception{
		
		// setting
		
		ClassDTO dto = new ClassDTO();
		
		
		dto.setcColor(classCommand.getcColor());
		dto.setcContent(classCommand.getcContent());
		dto.setcCount(classCommand.getcCount());
		dto.setcWeight(classCommand.getcWeight());
		dto.setpCode(classCommand.getpCode());
		dto.setcCode(classCommand.getcCode());
		dto.setcWeight(classCommand.getcWeight());
		dto.setcName(classCommand.getcName());
		
		// photo file
		String classPhoto = "";
		String original = "";
		String store = "";
		String path = "/WEB-INF/view/kinder/upload";
		String photopath = session.getServletContext().getRealPath(path);
		
		MultipartFile mf = classCommand.getcPhoto();
		original = mf.getOriginalFilename();
		String originalFilExtension = original.substring(original.lastIndexOf("."));
		store = UUID.randomUUID().toString().replace("-", "") + originalFilExtension;
		classPhoto = original + "`" + store;
		
		// 사진 저장
		File file = new File(photopath + "/" + store);
		mf.transferTo(file);
		
		dto.setcPhoto(classPhoto);
		
		return classMapper.classInsert(dto);
	}
}
