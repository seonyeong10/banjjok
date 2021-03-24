package banjjok.service.salon.desn;

import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.domain.AuthInfo;
import banjjok.domain.MemSalReserveDTO;
import banjjok.mapper.SalonReserveMapper;
import banjjok.service.CalendarMaker;

@Service
public class DesnScheduleService {
	@Autowired
	SalonReserveMapper reserveMapper;

	public void show(HttpSession session, Model model) throws Exception {
		/**
		 * 캘린더에 해당일자에 해당하는 예약 내용 출력(요약 + 리스트)
		 */
		// 캘린더
		CalendarMaker maker = new CalendarMaker();
		String month = null;
		String date = null;
		maker.create(month, date, model);
		
		// 디자이너의 예약 스케줄
		String desnId = ((AuthInfo) session.getAttribute("authInfo")).getUserId();
		MemSalReserveDTO dto = new MemSalReserveDTO();
		dto.setDesnId(desnId);
		List<MemSalReserveDTO> list = reserveMapper.getList(dto);
		model.addAttribute("list", list);
	}

}
