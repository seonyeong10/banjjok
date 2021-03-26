package banjjok.controller.hotel.book;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import banjjok.service.hotel.book.BookFormService;

@Controller
@RequestMapping("hotel")
public class BookingController {
	@Autowired
	BookFormService bookFormService;
	
	@RequestMapping("book/{roomCode}")
	public String hotelBooking(@PathVariable(value = "roomCode") String roomCode, Model model, HttpSession session) throws Exception {
		bookFormService.bookForm(roomCode, model, session);
		return "hotel/book/bookForm";
	}
}
