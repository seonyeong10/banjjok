package banjjok.service.kinder;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.domain.ProgramDTO;
import banjjok.domain.TeacherDTO;
import banjjok.mapper.ProgramMapper;
import banjjok.mapper.TeacherMapper;

@Service
public class KgMainService {
	@Autowired
	TeacherMapper teacherMapper;
	@Autowired
	ProgramMapper programMapper;

	public void view(Model model) throws Exception {
		// 프로그램
		ProgramDTO pDTO = new ProgramDTO();
		List<ProgramDTO> programs = programMapper.programs(pDTO);
		
		// 선생님
		TeacherDTO tDTO = new TeacherDTO();
		List<TeacherDTO> tchs = teacherMapper.enrollListup(tDTO);
		
		model.addAttribute("tchs", tchs);
		model.addAttribute("programs", programs);
	}

}
