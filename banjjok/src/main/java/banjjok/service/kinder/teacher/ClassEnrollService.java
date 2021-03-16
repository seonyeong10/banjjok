package banjjok.service.kinder.teacher;

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
		Integer resultdata = null;
		ClassDTO dto = new ClassDTO();
		
		dto.setcCode(classCommand.getcCode());
		dto.setcColor(classCommand.getcColor());
		dto.setcContent(classCommand.getcContent());
		dto.setcCount(classCommand.getcCount());
		dto.setcWeight(classCommand.getcWeight());
		dto.setpCode(classCommand.getpCode());
		
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
		
		dto.setcPhoto(classPhoto);
		
		classMapper.classInsert(dto);
	
		return resultdata;
	}
}
