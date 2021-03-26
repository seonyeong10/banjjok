package banjjok.service.salon.desn;

import java.sql.Timestamp;
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
		String year = null;
		String month = null;
		String date = null;
		maker.create(year, month, date, model);
		
		// 디자이너의 예약 스케줄
		String desnId = ((AuthInfo) session.getAttribute("authInfo")).getUserId();
		MemSalReserveDTO dto = new MemSalReserveDTO();
		dto.setDesnId(desnId);
		List<MemSalReserveDTO> list = reserveMapper.getList(dto);
		model.addAttribute("list", list);
	}

	public void otherMon(String year, String month, HttpSession session, Model model) throws Exception {
		CalendarMaker maker = new CalendarMaker();
		String date = null;
		maker.create(year, month, date, model);
		System.out.println(month);
		
		// 디자이너의 예약 스케줄
		String desnId = ((AuthInfo) session.getAttribute("authInfo")).getUserId();
		MemSalReserveDTO dto = new MemSalReserveDTO();
		dto.setDesnId(desnId);
		String str = year + "-" + (Integer.parseInt(month) + 1) + "-" + "01 00:00:00.0"; 
		String end = year + "-" + (Integer.parseInt(month) + 2) + "-" + "01 00:00:00.0"; 
		dto.setReservDate(Timestamp.valueOf(str));
		dto.setCancleDate(Timestamp.valueOf(end));
		List<MemSalReserveDTO> list = reserveMapper.getList(dto);
		model.addAttribute("list", list);
	}

}
