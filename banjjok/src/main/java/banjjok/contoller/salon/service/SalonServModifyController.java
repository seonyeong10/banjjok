package banjjok.contoller.salon.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import banjjok.command.SalonServCommand;
import banjjok.service.salon.serv.SalonServInfoService;
import banjjok.service.salon.serv.SalonServModifyService;
import banjjok.service.salon.serv.ServListService;

@Controller
@RequestMapping(value = "/salon/menu")
public class SalonServModifyController {
	@Autowired
	SalonServInfoService salonServInfoService;
	@Autowired
	SalonServModifyService salonServModifyService;
	@RequestMapping(value = "menuModify", method = RequestMethod.GET)
	public String modify(@RequestParam(value = "serviceCode") String serviceCode, Model model) throws Exception {
		salonServInfoService.getMenuInfo(serviceCode, model);
		return "salon/service/serviceModify";
	}
	@RequestMapping(value = "menuModifyAct", method = RequestMethod.POST)
	public String menuModifyAct(SalonServCommand salonServCommand) throws Exception {
		salonServModifyService.modifyMenu(salonServCommand);
		return "redirect:/salon/menu/menuInfo?serviceCode=" + salonServCommand.getServiceCode();
	}
}
