package banjjok.service.salon.desn;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.domain.MemSalReserveDTO;
import banjjok.mapper.SalonReserveMapper;

@Service
public class DesnResListService {
	// 특정 일의 예약 리스트 가져오는 서비스
	@Autowired
	SalonReserveMapper reserveMapper;
	
	public void getList(String year, String month, String date, Model model) throws Exception {
		if(month.length() < 2) {
			month = '0' + month;
		}
		String str = year + "-" + month + "-" + date + " 00:00:00.0";
		String end = year + "-" + month + "-" + (Integer.parseInt(date)+1) + " 00:00:00.0";
		Timestamp strDate = Timestamp.valueOf(str);
		Timestamp endDate = Timestamp.valueOf(end);
		
		MemSalReserveDTO dto = new MemSalReserveDTO();
		dto.setReservDate(strDate);
		dto.setCancleDate(endDate);
		List<MemSalReserveDTO> list = reserveMapper.getList(dto);	// 지정 날짜로 데이터 가져옴
		model.addAttribute("res", list);
	}
}
