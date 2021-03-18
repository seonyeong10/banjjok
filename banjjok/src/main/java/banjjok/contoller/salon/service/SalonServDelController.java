package banjjok.contoller.salon.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import banjjok.command.SalonServCommand;
import banjjok.service.salon.serv.SalonServDelService;
import banjjok.service.salon.serv.SalonServInfoService;
import banjjok.service.salon.serv.SalonServModifyService;
import banjjok.service.salon.serv.ServListService;

@Controller
@RequestMapping(value = "service")
public class SalonServDelController {
	@Autowired
	SalonServDelService salonServDelService;
	@RequestMapping(value = "menuDelete", method = RequestMethod.GET)
	public String delete(@RequestParam(value = "serviceCode") String serviceCode) throws Exception {
		salonServDelService.delete(serviceCode);
		return "redirect:/service/menu";
	}
}
