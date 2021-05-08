package banjjok.service.kinder.Program;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.domain.ProgramDTO;
import banjjok.domain.TeacherDTO;
import banjjok.mapper.ProgramMapper;
import banjjok.mapper.TeacherMapper;

@Service
public class EduModifyService {
	@Autowired
	ProgramMapper programMapper;
	@Autowired
	TeacherMapper teacherMapper;

	public void getProgram(String pCode, Model model) throws Exception {
		ProgramDTO dto = new ProgramDTO();
		dto.setpCode(pCode);
		dto = programMapper.getProgram(dto);
		TeacherDTO tDTO = new TeacherDTO();
		List<TeacherDTO> list = teacherMapper.enrollListup(tDTO);
		model.addAttribute("dto", dto);
		System.out.println(dto.getpTeacher());
		model.addAttribute("list", list);
	}

}
