package banjjok.controller.hotel;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller

public class HotelController {
	@RequestMapping(value = "hotel", method = RequestMethod.GET)
	public String hotel() throws Exception {
		//로그인 안 했다면 로그인 페이지로
//		return "/login/login";
		
		//로그인 했다면 호텔메인으로
		return "/hotel/hotelMain";
	}
}
