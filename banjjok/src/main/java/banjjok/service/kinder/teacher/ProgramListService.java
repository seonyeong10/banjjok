package banjjok.service.kinder.teacher;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.domain.ProgramDTO;
import banjjok.mapper.ProgramMapper;

@Service
@Component
public class ProgramListService {
	
	@Autowired
	ProgramMapper programMapper;

	public void programList(Model model) throws Exception {
		ProgramDTO dto = new ProgramDTO();
		List<ProgramDTO> lists = programMapper.programListup(dto);
		model.addAttribute("lists", lists);
	}
	
}
