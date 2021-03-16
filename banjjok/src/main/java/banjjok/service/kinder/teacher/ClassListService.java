package banjjok.service.kinder.teacher;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.domain.ClassDTO;
import banjjok.mapper.ClassMapper;

@Service
@Component
public class ClassListService {
	
		@Autowired
		ClassMapper classMapper;
	
	public void classList(Model model) throws Exception{
		
		// make list 
		ClassDTO dto = new ClassDTO();
		List<ClassDTO> lists = classMapper.classListup(dto);
		
		model.addAttribute("lists", lists);
	}
}
