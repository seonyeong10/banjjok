package banjjok.service.hotel.book;

import java.sql.Timestamp;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.command.HotelBookCommand;
import banjjok.domain.AuthInfo;
import banjjok.domain.HotelBookDTO;
import banjjok.mapper.HotelBookMapper;

@Service
@Component
public class BookActService {
	@Autowired
	HotelBookMapper hotelBookMapper;
	
	public void bookAct(HotelBookCommand command, HttpSession session, Model model) throws Exception {
		HotelBookDTO dto = new HotelBookDTO();

		String userId = ((AuthInfo)session.getAttribute("authInfo")).getUserId();
		
		dto.setMemId(userId);
		
		String bookCode = hotelBookMapper.createCode(); //예약코드 생성
		dto.setReservCode(bookCode); 
		
		dto.setRoomCode(command.getRoomCode());
		dto.setPetId(command.getPetId());
		dto.setChkInDate(command.getChkInDate());
		System.out.println(command.getChkInDate());
		dto.setChkOutDate(command.getChkOutDate());
		dto.setChkOutDate(command.getChkOutDate());
		dto.setReservDesc(command.getBookDesc());
		dto.setSitterId(command.getSitterId());
		
		Integer result = hotelBookMapper.insertBook(dto); //예약
		hotelBookMapper.insertBookList(dto); //예약리스트
		System.out.println(result + "개가 예약되었습니다.");
		
		
	}

}
