package banjjok.service.kinder.Program;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.domain.ProgramDTO;
import banjjok.mapper.ProgramMapper;

@Service
public class EduListService {
	@Autowired
	ProgramMapper programMapper;

	public void programs(String pCateg, Model model) throws Exception {
		ProgramDTO dto = new ProgramDTO();
		dto.setpCateg(pCateg);
		List<ProgramDTO> list = programMapper.programs(dto);
		model.addAttribute("list", list);
	}

}
