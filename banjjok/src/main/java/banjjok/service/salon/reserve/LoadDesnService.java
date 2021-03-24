package banjjok.service.salon.reserve;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.domain.DesnDTO;
import banjjok.mapper.DesnMapper;
import banjjok.service.CalendarMaker;

@Service
public class LoadDesnService {
	@Autowired
	DesnMapper desnMapper;

	public void load(String month, String date, Model model) throws Exception {
		DesnDTO dto = new DesnDTO();
		List<DesnDTO> list = desnMapper.getDesnList(dto);
		
		CalendarMaker maker = new CalendarMaker();
		maker.create(month, date, model);
		model.addAttribute("desn", list);
	}

}
