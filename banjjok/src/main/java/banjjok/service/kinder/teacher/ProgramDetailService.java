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
public class ProgramDetailService {
	
	@Autowired
	ProgramMapper programMapper;

	public void programDetail(String pCode, Model model) throws Exception {
		ProgramDTO dto = new ProgramDTO();
		dto.setpCode(pCode);
		List<ProgramDTO> lists = programMapper.programListup(dto);
		model.addAttribute("lists", lists.get(0));
	}

}
