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
public class EnrollDetailService {
	
	@Autowired
	TeacherMapper teacherMapper;

	public void enrollDetail(String tId, Model model) throws Exception{
		
		TeacherDTO dto = new TeacherDTO();
		dto.settId(tId);
		List<TeacherDTO> lists = teacherMapper.enrollListup(dto);
		
		model.addAttribute("lists", lists.get(0));
		
	}

}
