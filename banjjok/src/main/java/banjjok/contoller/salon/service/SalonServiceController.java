package banjjok.contoller.salon.service;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "service")
public class SalonServiceController {
	@RequestMapping(value = "addService", method = RequestMethod.GET)
	public String regist() {
		return "salon/service/serviceForm";
	}
}
