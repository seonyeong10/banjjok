package banjjok.controller.hotel.book;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("hotel")
public class BookingController {
	@RequestMapping("book")
	public String hotelBooking() {
		return "hotel/book/bookForm";
	}
}
