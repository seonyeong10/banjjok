package banjjok.contoller.salon.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import banjjok.service.salon.serv.SalonServInfoService;

@Controller
@RequestMapping(value = "service")
public class SalonServInfoController {
	@Autowired
	SalonServInfoService salonServInfoService;
	@RequestMapping(value = "menuInfo", method = RequestMethod.GET)
	public String menuInfo(@RequestParam(value = "serviceCode") String serviceCode, Model model) throws Exception {
		salonServInfoService.getMenuInfo(serviceCode, model);
		return "salon/service/serviceInfo";
	}
}
