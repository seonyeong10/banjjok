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
import banjjok.service.salon.reserve.ReserveChkService;
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
	@Autowired
	ReserveChkService reserveChkService;
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
	@RequestMapping(value = "menu/isReserve", method = RequestMethod.POST)
	public String isReserve(@RequestParam(value = "desnId") String desnId, @RequestParam(value = "year") int year, @RequestParam(value = "month") int month, 
			@RequestParam(value = "date") int date, @RequestParam(value = "time") String time, Model model) throws Exception {
		// 선택한 시간이 예약되었는지 확인
		reserveChkService.isReserve(desnId, year, month, date, time, model);		
		return "salon/imgDel";
	}
	
}
