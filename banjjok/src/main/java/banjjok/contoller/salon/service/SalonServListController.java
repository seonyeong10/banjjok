package banjjok.contoller.salon.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import banjjok.service.salon.serv.ServListService;

@Controller
@RequestMapping(value = "service")
public class SalonServListController {
	@Autowired
	ServListService servListService;
	@RequestMapping(value = "menu", method = RequestMethod.GET)
	public String getList(Model model) throws Exception {
		servListService.getServiceList(model);
		return "salon/service/serviceList";
	}
}
