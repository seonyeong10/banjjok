package banjjok.service.kinder.teacher;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.domain.TeacherDTO;
import banjjok.mapper.TeacherMapper;

@Service
@Component
public class EnrollListService {
	
	@Autowired
	TeacherMapper teacherMapper;

	public void enrollList(Model model) throws Exception {
		
		TeacherDTO dto = new TeacherDTO();
		
		List<TeacherDTO> lists = teacherMapper.enrollListup(dto);
		
		model.addAttribute("lists", lists);
		
	}

}
