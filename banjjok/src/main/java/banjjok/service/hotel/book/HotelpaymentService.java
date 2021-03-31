package banjjok.service.hotel.book;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import banjjok.command.HotelPaymentCommand;
import banjjok.domain.HotelPaymentDTO;
import banjjok.mapper.HotelBookMapper;

@Service
@Component
public class HotelpaymentService {
	@Autowired
	HotelBookMapper hotelBookMapper;
	
	public void payment(HotelPaymentCommand hotelPaymentCommand) {
		HotelPaymentDTO dto = new HotelPaymentDTO();
		dto.setReservCode(hotelPaymentCommand.getBookCode());
		dto.setRoomPrice(hotelPaymentCommand.getRoomPrice());
		//추후에 서비스 추가하면
//		dto.setAddPrice(hotelPaymentCommand.getAddPrice()); 
//		dto.setTotalPrice(hotelPaymentCommand.getAddPrice()+hotelPaymentCommand.getRoomPrice());
		dto.setPayMethod(hotelPaymentCommand.getPayMethod());
		Integer result = hotelBookMapper.insertPayment(dto);
		System.out.println(result + "개의 결제정보 입력됨");
	}

}
