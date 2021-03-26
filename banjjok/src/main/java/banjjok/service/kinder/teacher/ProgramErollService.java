package banjjok.service.kinder.teacher;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.command.ProgramCommand;
import banjjok.domain.ProgramDTO;
import banjjok.mapper.ProgramMapper;


@Service
@Component
public class ProgramErollService {
	
	@Autowired
	ProgramMapper programMapper;

	public void programEroll(ProgramCommand programCommand, HttpSession session) throws Exception{
		ProgramDTO dto = new ProgramDTO();
		dto.setpCode(programCommand.getpCode());
		dto.setpContent(programCommand.getpContent());
		dto.setpName(programCommand.getpName());
		dto.setpPrice(programCommand.getpPrice());
		dto.setpTime(programCommand.getpTime());
		
		programMapper.programInsert(dto);
	}

}
