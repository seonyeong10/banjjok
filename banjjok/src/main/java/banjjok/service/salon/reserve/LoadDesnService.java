package banjjok.service.salon.reserve;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.domain.DesnDTO;
import banjjok.domain.DesnResDTO;
import banjjok.domain.MemSalReserveDTO;
import banjjok.mapper.DesnMapper;
import banjjok.service.CalendarMaker;

@Service
public class LoadDesnService {
	@Autowired
	DesnMapper desnMapper;

	public void load(String year, String month, String date, Model model) throws Exception {
		// 디자이너
		DesnDTO dto = new DesnDTO();
		List<DesnDTO> list = desnMapper.getDesnList(dto);
		model.addAttribute("desn", list);
		
		// 달력
		CalendarMaker maker = new CalendarMaker();
		maker.create(year, month, date, model);
		
	}

}
