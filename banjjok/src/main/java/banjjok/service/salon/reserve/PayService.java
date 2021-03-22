package banjjok.service.salon.reserve;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import banjjok.command.SalonPayCommand;
import banjjok.command.SalonReserveCommand;
import banjjok.domain.SalonPayDTO;
import banjjok.domain.SalonReserveDTO;
import banjjok.mapper.SalonReserveMapper;

@Service
public class PayService {
	@Autowired
	SalonReserveMapper reserveMapper;

	public void pay(SalonPayCommand salonPayCommand) throws Exception {
		// 예약 리스트
		SalonReserveDTO reserveDTO = new SalonReserveDTO();
		reserveDTO.setReservCode(salonPayCommand.getReservCode());
		java.sql.Date reservDate = java.sql.Date.valueOf(salonPayCommand.getReservDate());
		reserveDTO.setReservDate(reservDate);
		reserveDTO.setReservTime(salonPayCommand.getReservTime());
		reserveDTO.setReservDesc(salonPayCommand.getReservDesc());
		
		// 결제
		SalonPayDTO payDTO = new SalonPayDTO();
		payDTO.setReservCode(salonPayCommand.getReservCode());
		payDTO.setPayMethod(salonPayCommand.getPayMethod());
		payDTO.setTotalFee(salonPayCommand.getTotalFee());
		
		reserveMapper.insertResList(reserveDTO);
		reserveMapper.insertPay(payDTO);
	}

}
