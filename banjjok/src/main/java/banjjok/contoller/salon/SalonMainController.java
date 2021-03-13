package banjjok.contoller.salon;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import banjjok.service.salon.DesnListService;

@Controller
public class SalonMainController {
	@Autowired
	DesnListService desnListService;
	@RequestMapping(value = "salon", method = RequestMethod.GET)
	public String salon(Model model) throws Exception {
		desnListService.desnList(model);
		return "/salon/salonMain";
	}

}
