package banjjok.service.kinder.teacher;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import banjjok.command.TeacherCommand;
import banjjok.domain.TeacherDTO;
import banjjok.mapper.TeacherMapper;

@Service
@Component
public class EnrollModifyOkService {
	
	@Autowired
	TeacherMapper teacherMapper;

	public Integer enrollModifyOk(TeacherCommand teacherCommand) throws Exception {
		
		
		TeacherDTO dto = new TeacherDTO();
		dto.settId(teacherCommand.gettId());
		dto.settPh(teacherCommand.gettPh());
		dto.settEmail(teacherCommand.gettEmail());
		dto.settDuty(teacherCommand.gettDuty());
		dto.settState(teacherCommand.gettState());
		
		Integer resultdata = 0;
		
		return resultdata = teacherMapper.enrollModify(dto);
	}

}
