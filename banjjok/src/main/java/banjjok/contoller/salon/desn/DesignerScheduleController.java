package banjjok.contoller.salon.desn;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import banjjok.service.salon.desn.ChangeStatusService;
import banjjok.service.salon.desn.DesnResInfoService;
import banjjok.service.salon.desn.DesnResListService;
import banjjok.service.salon.desn.DesnScheduleService;

@Controller
@RequestMapping(value = "/salon/desn")
public class DesignerScheduleController {
	@Autowired
	DesnScheduleService scheduleService;
	@Autowired
	DesnResListService resListService;
	@Autowired
	DesnResInfoService resInfoService;
	@Autowired
	ChangeStatusService changeStatusService;
	
	@RequestMapping(value = "schedule", method = RequestMethod.GET)
	public String schedule(HttpSession session, Model model) throws Exception {
		scheduleService.show(session, model);
		return "/salon/designer/desnSchedule";
	}
	@RequestMapping(value = "dateReserve", method = RequestMethod.POST)
	public String dateReserve(@RequestParam(value = "year") String year, 
			@RequestParam(value = "month") String month, 
			@RequestParam(value = "date") String date, HttpSession session, Model model) throws Exception {
		resListService.getList(year, month, date, session, model);
		return "/salon/designer/desnResList";
	}
	@RequestMapping(value = "reserveInfo", method = RequestMethod.GET)
	public String reserveInfo(@RequestParam(value = "reservCode") String reservCode, Model model) throws Exception {
		resInfoService.getInfo(reservCode, model);
		return "/salon/designer/reserveInfo";
	}
	@RequestMapping(value = "changeSt", method = RequestMethod.POST)
	public String complete(@RequestParam(value = "reservCode") String reservCode, 
			@RequestParam(value = "status") String status, Model model) throws Exception {
		changeStatusService.update(reservCode, status, model);
		return "salon/imgDel";
	}
	@RequestMapping(value = "otherMon")
	public String otherMon(@RequestParam(value = "year") String year, @RequestParam(value = "month") String month, HttpSession session, Model model) throws Exception {
		scheduleService.otherMon(year, month, session, model);
		return "/salon/designer/scheduleCal";
	}
}
