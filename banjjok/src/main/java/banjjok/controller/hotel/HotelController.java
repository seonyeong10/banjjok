package banjjok.controller.hotel;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller

public class HotelController {
	@RequestMapping(value = "hotel", method = RequestMethod.GET)
	public String hotel() throws Exception {
		return "/hotel/hotelMain";
	}
}
