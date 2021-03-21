package banjjok.service.salon.reserve;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.command.SalonReserveCommand;
import banjjok.domain.AuthInfo;
import banjjok.domain.SalonReserveDTO;
import banjjok.mapper.SalonReserveMapper;

@Component
@Service
public class ReserveService {
	@Autowired
	SalonReserveMapper salonReserveMapper;

	public void reserve(SalonReserveCommand salonReserveCommand, Model model, HttpSession session) throws Exception {
		SalonReserveDTO dto = new SalonReserveDTO();
//		System.out.println("디자이너 아이디 : " + salonReserveCommand.getDesnId());
//		System.out.println("서비스 코드 : " + salonReserveCommand.getServiceCode());
//		System.out.println("예약 연도 : " + salonReserveCommand.getYear());
//		System.out.println("예약 월 : " + salonReserveCommand.getMonth());
//		System.out.println("예약 일 : " + salonReserveCommand.getDate());
//		System.out.println("예약시간 : " + salonReserveCommand.getReservTime());
//		System.out.println("요청사항 : " + salonReserveCommand.getReservDesc());
		String memId = ((AuthInfo)session.getAttribute("authInfo")).getUserId();
		dto.setDesnId(salonReserveCommand.getDesnId());
		dto.setMemId(memId);
		dto.setPetId("1");
		String month = "";
		if(salonReserveCommand.getMonth().length() != 2) {
			month = "0" + salonReserveCommand.getMonth();
		} else {
			month = salonReserveCommand.getMonth();
		}
		String date = salonReserveCommand.getYear() + "-" + month + "-" + salonReserveCommand.getDate();
		java.sql.Date reservDate = java.sql.Date.valueOf(date);
		dto.setReservDate(reservDate);
		dto.setReservDesc(salonReserveCommand.getReservDesc());
		dto.setReservTime(salonReserveCommand.getReservTime());
		dto.setServiceCode(salonReserveCommand.getServiceCode());
		
		System.out.println(dto.getDesnId());
		
		salonReserveMapper.insertRes(dto);
	}

}
