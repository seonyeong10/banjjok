package banjjok.service.salon;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.domain.DesnDTO;
import banjjok.mapper.DesnMapper;

@Service
public class DesnListService {
	@Autowired
	DesnMapper desnMapper;

	public void desnList(Model model) throws Exception {
		DesnDTO dto = new DesnDTO();
		List<DesnDTO> list = desnMapper.getDesnList(dto);
		model.addAttribute("list", list);
	}

}
