package banjjok.service.mem.reserve;

import java.sql.Timestamp;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import banjjok.command.SalonReserveCommand;
import banjjok.domain.AuthInfo;
import banjjok.domain.SalonReserveDTO;
import banjjok.mapper.SalonReserveMapper;

@Service
public class ResModifyService {
	@Autowired
	SalonReserveMapper reserveMapper;

	public void updateRes(SalonReserveCommand salonReserveCommand, HttpSession session) throws Exception {
		SalonReserveDTO reserveDTO = new SalonReserveDTO();
		String date = salonReserveCommand.getYear() + "-" + salonReserveCommand.getMonth() + "-" + salonReserveCommand.getDate() + " " + salonReserveCommand.getReservTime() + ":00";
		Timestamp reservDate = Timestamp.valueOf(date);
		reserveDTO.setReservDate(reservDate);
//		reserveDTO.setReservTime(reservTime);
		reserveDTO.setReservDesc(salonReserveCommand.getReservDesc());
		reserveDTO.setReservCode(salonReserveCommand.getReservCode());
		
		reserveMapper.updateRes(reserveDTO);	// reserve_salon 업데이트
		reserveMapper.updateRes2(reserveDTO);	// reserve_list_salon 업데이트
	}

}
