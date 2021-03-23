package banjjok.service.mem.reserve;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.domain.AuthInfo;
import banjjok.domain.MemSalReserveDTO;
import banjjok.domain.SalonReserveDTO;
import banjjok.mapper.SalonReserveMapper;

@Service
public class ListService {
	@Autowired
	SalonReserveMapper salonReserveMapper;

	// 살롱 예약 리스트
	public void getResList(HttpSession session, Model model) throws Exception {
		MemSalReserveDTO memDTO = new MemSalReserveDTO();
		String memId = ((AuthInfo) session.getAttribute("authInfo")).getUserId();
		memDTO.setMemId(memId);
		List<MemSalReserveDTO> list = salonReserveMapper.getList(memDTO);
		model.addAttribute("list", list);
	}
	
}
