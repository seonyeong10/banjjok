package banjjok.controller.hotel.book;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import banjjok.domain.AuthInfo;
import banjjok.service.hotel.book.BookActService;
import banjjok.service.hotel.book.BookFormService;

@Controller
@RequestMapping("hotel")
public class BookingController {
	@Autowired
	BookFormService bookFormService;
	@Autowired
	BookActService bookActService;
	
	@RequestMapping("book/{roomCode}")
	public String hotelBooking(@PathVariable(value = "roomCode") String roomCode, Model model, HttpSession session) throws Exception {
		// 로그인 안 했으면 로그인페이지로
//		if(((AuthInfo) session.getAttribute("authInfo")) == null ) {
//			return "redirect:/login";
//		} else {
			bookFormService.bookForm(roomCode, model, session);
			return "hotel/book/bookForm";
//		}
	}
			@RequestMapping("bookAct")
			public String bookAct(HttpSession session) throws Exception {
				bookActService.bookAct(session);
				return "hotel/book/bookInfo"; //예약정보
			
	}
}
