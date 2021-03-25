package banjjok.service.salon.reserve;

import java.sql.Timestamp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.domain.MemSalReserveDTO;
import banjjok.mapper.SalonReserveMapper;

@Service
public class ReserveChkService {
	@Autowired
	SalonReserveMapper reserveMapper;

	public void isReserve(int year, int month, int date, String time, Model model) throws Exception {
		String start = year + "-" + month + "-" + date + " " + time + ":00.0";
		MemSalReserveDTO dto = new MemSalReserveDTO();
		dto.setReservDate(Timestamp.valueOf(start));
		Integer count = reserveMapper.isReserve(dto);
		model.addAttribute("val", count);
	}

}
