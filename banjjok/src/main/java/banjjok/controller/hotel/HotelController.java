package banjjok.controller.hotel;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import banjjok.command.LoginCommand;

@Controller

public class HotelController {
	@RequestMapping(value = "hotel", method = RequestMethod.GET)
	public String hotel(@Validated LoginCommand loginCommand, BindingResult result, HttpSession session, Model model) throws Exception {
//		//로그인 안 했다면 로그인 페이지로
//		if(result.hasErrors()) {
//			return "redirect:login";
//		}else {
		//로그인 했다면 호텔메인으로
		return "/hotel/hotelMain";
//		}
	}
	@RequestMapping(value="sitterInfo", method = RequestMethod.GET)
	public String sitterInfo() {
		return "";
	}
}

	