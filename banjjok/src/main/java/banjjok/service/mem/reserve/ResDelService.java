package banjjok.service.mem.reserve;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import banjjok.domain.SalonReserveDTO;
import banjjok.mapper.SalonReserveMapper;

@Service
public class ResDelService {
	@Autowired
	SalonReserveMapper reserveMapper;

	public void salonCancle(String reservCode) throws Exception {
		SalonReserveDTO dto = new SalonReserveDTO();
		dto.setReservCode(reservCode);
		reserveMapper.cancle(dto);
	}

}
