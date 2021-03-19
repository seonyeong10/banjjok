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
public class ClassDetailService {
	
	@Autowired
	ClassMapper classMapper;

	public void classDetail(String cCode, Model model) throws Exception {
		ClassDTO dto = new ClassDTO();
		dto.setcCode(cCode);
		List<ClassDTO> lists = classMapper.classListup(dto);
		
		model.addAttribute("lists", lists);
		
	}

}
