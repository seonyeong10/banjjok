package banjjok.contoller.salon.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import banjjok.command.SalonServCommand;
import banjjok.service.salon.serv.ServCodeService;
import banjjok.service.salon.serv.ServRegistService;

@Controller
@RequestMapping(value = "/salon/menu")
public class SalonServiceController {
	@ModelAttribute
	SalonServCommand setSalonServCommand() {
		return new SalonServCommand();
	}
	@Autowired
	ServCodeService servCodeService;
	@Autowired
	ServRegistService servRegistService;
	
	@RequestMapping(value = "addMenu", method = RequestMethod.GET)
	public String regist(Model model) throws Exception {
		servCodeService.getCode(model);
		return "salon/service/serviceForm";
	}
	@RequestMapping(value = "menuRegist", method = RequestMethod.POST)
	public String registAct(@Validated SalonServCommand salonServCommand, BindingResult result, Model model) throws Exception {
		if(result.hasErrors()) {
			return "redirect:/salon/menu/addMenu";
		}
		String path = servRegistService.addService(salonServCommand, model);
		return path;
	}
}
