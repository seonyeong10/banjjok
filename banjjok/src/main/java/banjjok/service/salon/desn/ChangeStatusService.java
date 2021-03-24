package banjjok.service.salon.desn;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.domain.MemSalReserveDTO;
import banjjok.domain.SalonReserveDTO;
import banjjok.mapper.SalonReserveMapper;

@Service
public class ChangeStatusService {
	@Autowired
	SalonReserveMapper reserveMapper;

	public void update(String reservCode, String status, Model model) throws Exception {
		Integer result = null;
		SalonReserveDTO dto = new SalonReserveDTO();
		dto.setReservCode(reservCode);
		if(status.equals("1")) {
			result = reserveMapper.updateStatus(dto);
			System.out.println(result);
		} else if(status.equals("2")) {
			result = reserveMapper.cancle(dto);
		}
		model.addAttribute("val", result);
	}

}
