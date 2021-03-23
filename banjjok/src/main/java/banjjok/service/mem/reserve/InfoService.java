package banjjok.service.mem.reserve;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.command.SalonReserveCommand;
import banjjok.domain.AuthInfo;
import banjjok.domain.MemSalReserveDTO;
import banjjok.mapper.SalonReserveMapper;
import banjjok.service.CalendarMaker;

@Service
public class InfoService {
	@Autowired
	SalonReserveMapper reserveMapper;

	public void getReserve(String reservCode, HttpSession session, Model model) throws Exception {
		MemSalReserveDTO dto = new MemSalReserveDTO();
		String memId = ((AuthInfo) session.getAttribute("authInfo")).getUserId();
		dto.setMemId(memId);
		dto.setReservCode(reservCode);
		dto = reserveMapper.getList(dto).get(0);
		model.addAttribute("dto", dto);
	}

}
