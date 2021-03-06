package banjjok.controller.hotel.book;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import banjjok.command.HotelBookCommand;
import banjjok.command.HotelPaymentCommand;
import banjjok.domain.AuthInfo;
import banjjok.service.hotel.book.BookActService;
import banjjok.service.hotel.book.BookFormService;
import banjjok.service.hotel.book.BookInfoService;
import banjjok.service.hotel.book.HotelpaymentService;

@Controller
@RequestMapping("hotel")
public class BookingController {
	@Autowired
	BookFormService bookFormService;
	@Autowired
	BookActService bookActService;
	@Autowired
	BookInfoService bookInfoService;
	@Autowired
	HotelpaymentService hotelpaymentService;
	
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
	public String bookAct(HotelBookCommand hotelBookCommand, HttpSession session, Model model) throws Exception {
		bookActService.bookAct(hotelBookCommand, session, model);
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		String memId = authInfo.getUserId();
		return "redirect:/hotel/bookInfo/"+memId; // 예약정보

	}
	@RequestMapping("bookInfo/{userId}")
	public String bookInfo(@PathVariable(value="userId")String userId ,Model model, HttpSession session) throws Exception {
		bookInfoService.bookInfo(userId, model, session);
		return "hotel/book/bookInfo"; //예약정보
	}
	
	@RequestMapping("payment")
	public String hotelPayment(HotelPaymentCommand hotelPaymentCommand, HttpSession session) throws Exception {
		hotelpaymentService.payment(hotelPaymentCommand, session);
		return "hotel/book/completePayment";
	}
}
