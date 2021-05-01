package banjjok.service.kinder.teacher;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.sun.org.apache.bcel.internal.generic.ATHROW;

import banjjok.command.TeacherCommand;
import banjjok.domain.AuthInfo;
import banjjok.domain.TeacherDTO;
import banjjok.mapper.TeacherMapper;

@Service
@Component
public class EnrollModifyService {
	
	@Autowired
	TeacherMapper teacherMapper;

	public void enrollModify(TeacherCommand teacherCommand, Model model) throws Exception {
		TeacherDTO dto = new TeacherDTO();
		dto.settId(teacherCommand.gettId());
		List<TeacherDTO> lists = teacherMapper.enrollListup(dto);
		
		model.addAttribute("lists", lists.get(0));
	}
	
	// 수정된 직원 정보 수정(본인 수정)
	public void getTch(HttpSession session, Model model) throws Exception {
		TeacherDTO dto = new TeacherDTO();
		String tId = ((AuthInfo) session.getAttribute("authInfo")).getUserId();
		dto.settId(tId);
		List<TeacherDTO> lists = teacherMapper.enrollListup(dto);
		
		model.addAttribute("lists", lists.get(0));
	}

}
