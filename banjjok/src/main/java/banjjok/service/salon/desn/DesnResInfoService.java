package banjjok.service.salon.desn;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.domain.AuthInfo;
import banjjok.domain.MemSalReserveDTO;
import banjjok.mapper.SalonReserveMapper;

@Service
public class DesnResInfoService {
	@Autowired
	SalonReserveMapper reserveMapper;

	public void getInfo(String reservCode, Model model) throws Exception {
		MemSalReserveDTO dto = new MemSalReserveDTO();
		dto.setReservCode(reservCode);
		dto = reserveMapper.getList(dto).get(0);
		model.addAttribute("dto", dto);
	}

}
