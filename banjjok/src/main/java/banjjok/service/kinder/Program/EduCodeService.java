package banjjok.service.kinder.Program;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.domain.TeacherDTO;
import banjjok.mapper.ProgramMapper;
import banjjok.mapper.TeacherMapper;

@Service
public class EduCodeService {
	@Autowired
	ProgramMapper programMapper;
	@Autowired
	TeacherMapper teacherMapper;

	public void getCode(Model model) throws Exception {
		SimpleDateFormat sdf = new SimpleDateFormat("yyMM");
		Date dt = new Date();
		String date = sdf.format(dt);
		String pCode = "P" + date + programMapper.getCode();
		
		// 선생님 리스트
		TeacherDTO dto = new TeacherDTO();
		List<TeacherDTO> list = teacherMapper.enrollListup(dto);
		
		model.addAttribute("pCode", pCode);
		model.addAttribute("list", list);
	}

}
