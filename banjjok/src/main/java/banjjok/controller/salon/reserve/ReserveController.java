package banjjok.controller.salon.reserve;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import banjjok.command.SalonPayCommand;
import banjjok.command.SalonReserveCommand;
import banjjok.service.salon.reserve.PayService;
import banjjok.service.salon.reserve.ReserveFormService;
import banjjok.service.salon.reserve.ReserveService;

@Controller
@RequestMapping("/salon")
public class ReserveController {
	@Autowired
	ReserveFormService reserveFormService;
	@Autowired
	ReserveService reserveService;
	@Autowired
	PayService payService;
	@ModelAttribute
	SalonReserveCommand setsalonReserveCommand() {
		return new SalonReserveCommand();
	}
	@RequestMapping(value = "menu/reserve", method = RequestMethod.GET)
	public String reserve(@RequestParam(value = "serviceCode") String serviceCode, SalonReserveCommand salonReserveCommand,
			Model model, HttpSession session) throws Exception {
		reserveFormService.show(serviceCode,salonReserveCommand, model, session);
		return "salon/reserve/reserveForm";
	}
	@RequestMapping(value = "menu/reserveAct", method = RequestMethod.POST)
	public String desnStatus(SalonReserveCommand salonReserveCommand, Model model, HttpSession session) throws Exception {
		reserveService.reserve(salonReserveCommand, model, session);
		return "salon/reserve/menuOrder";
	}
	@RequestMapping(value = "menu/payment", method = RequestMethod.POST)
	public String order(SalonPayCommand salonPayCommand) throws Exception {
		payService.pay(salonPayCommand);
		return "salon/reserve/orderFin";
	}
//	@RequestMapping(value = "menu/loadDesn")
//	public String loadDesn() {
//		return "salon/reserve/changeStatus";
//	}
	
}
