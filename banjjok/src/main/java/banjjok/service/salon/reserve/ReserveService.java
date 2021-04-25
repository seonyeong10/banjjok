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
		String reservCode = salonReserveMapper.getCode();	// 예약코드
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		String memId = authInfo.getUserId();
		
		dto.setDesnId(salonReserveCommand.getDesnId());
		dto.setMemId(memId);
		dto.setPetId(salonReserveCommand.getPetId());
		String month = "";
		if(salonReserveCommand.getMonth().length() != 2) {
			month = "0" + (Integer.parseInt(salonReserveCommand.getMonth()) + 1);
		} else {
			month = salonReserveCommand.getMonth();
		}
		String date = salonReserveCommand.getYear() + "-" + month + "-" + salonReserveCommand.getDate() + " " + salonReserveCommand.getReservTime() + ":00";
		Timestamp reservDate = Timestamp.valueOf(date);
		dto.setReservDate(reservDate);
		if(salonReserveCommand.getReservDesc() != "") {
			dto.setReservDesc(salonReserveCommand.getReservDesc());
		} else {
			dto.setReservDesc("없음");
		}
		dto.setReservTime(salonReserveCommand.getReservTime());
		dto.setServiceCode(salonReserveCommand.getServiceCode());
		dto.setPetId(salonReserveCommand.getPetId());
		dto.setOptFee(salonReserveCommand.getOptFee());	// 추가금액
		dto.setReservCode(reservCode);
		dto.setDesnName(salonReserveCommand.getDesnName());
		dto.setMemName(authInfo.getUserName());
		dto.setServiceName(salonReserveCommand.getServiceName());
		dto.setServiceFee(salonReserveCommand.getServiceFee());
		dto.setPetName(salonReserveCommand.getPetName());
		salonReserveMapper.insertRes(dto);
		
		// 예약코드로 정보 불러오기
		model.addAttribute("info", dto);
	}

}
