package banjjok.service.salon.reserve;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import banjjok.domain.SalonReserveDTO;
import banjjok.mapper.SalonReserveMapper;

@Service
public class SalResCancleService {
	@Autowired
	SalonReserveMapper salonReserveMapper;

	public void cancle(String reservCode) throws Exception {
		SalonReserveDTO reserveDTO = new SalonReserveDTO();
		reserveDTO.setReservCode(reservCode);
		salonReserveMapper.canclePay(reserveDTO);
	}

}
