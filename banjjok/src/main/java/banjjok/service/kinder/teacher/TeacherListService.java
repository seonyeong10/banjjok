package banjjok.service.kinder.teacher;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.domain.TeacherDTO;
import banjjok.mapper.TeacherMapper;

@Service
public class TeacherListService {
	@Autowired
	TeacherMapper teacherMapper;

	public void getList(Model model) throws Exception {
		TeacherDTO dto = new TeacherDTO();
		List<TeacherDTO> list = teacherMapper.enrollListup(dto);
		model.addAttribute("list", list);
	}

}
