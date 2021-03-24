package banjjok.service.mem.reserve;

import java.text.SimpleDateFormat;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.command.SalonReserveCommand;
import banjjok.domain.AuthInfo;
import banjjok.domain.DesnDTO;
import banjjok.domain.MemSalReserveDTO;
import banjjok.mapper.DesnMapper;
import banjjok.mapper.SalonReserveMapper;
import banjjok.service.CalendarMaker;

@Service
public class ModifyInfoService {
	@Autowired
	SalonReserveMapper reserveMapper;
	@Autowired
	DesnMapper desnMapper;
	
	public void getInfo(String reservCode, SalonReserveCommand salonReserveCommand, HttpSession session, Model model) throws Exception {
		MemSalReserveDTO dto = new MemSalReserveDTO();
		String memId = ((AuthInfo) session.getAttribute("authInfo")).getUserId();
		dto.setMemId(memId);
		dto.setReservCode(reservCode);
		dto = reserveMapper.getList(dto).get(0);
		model.addAttribute("dto", dto);
		
		// 달력
		CalendarMaker maker = new CalendarMaker();
//		if(salonReserveCommand.getDate() == null) {
//			String month = "";
//			String date = "";
//			SimpleDateFormat sdf = new SimpleDateFormat("MM");
//			month = sdf.format(dto.getReservDate());
//			sdf = new SimpleDateFormat("dd");
//			date = sdf.format(dto.getReservDate());
//			
//			salonReserveCommand.setMonth(month);
//			salonReserveCommand.setDate(date);
//		}
		
		SimpleDateFormat sdf = new SimpleDateFormat("MM");
		String month = sdf.format(dto.getReservDate());
		sdf = new SimpleDateFormat("dd");
		String date = sdf.format(dto.getReservDate());
		
		maker.create(month, date, model);
		
//		maker.create(salonReserveCommand ,model);
		
		DesnDTO desnDTO = new DesnDTO();
		desnDTO.setDesnId(dto.getDesnId());
		desnDTO = desnMapper.getDesnList(desnDTO).get(0);
		model.addAttribute("desn", desnDTO);
	}

}
