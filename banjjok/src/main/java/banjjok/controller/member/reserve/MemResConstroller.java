package banjjok.controller.member.reserve;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import banjjok.command.SalonReserveCommand;
import banjjok.service.mem.reserve.InfoService;
import banjjok.service.mem.reserve.ListService;
import banjjok.service.mem.reserve.ModifyInfoService;
import banjjok.service.mem.reserve.ResDelService;
import banjjok.service.mem.reserve.ResModifyService;

@Controller
@RequestMapping(value = "/main/reserve")
public class MemResConstroller {
	@Autowired
	ListService listService;
	@Autowired
	InfoService infoService;
	@Autowired
	ModifyInfoService modifyInfoService;
	@Autowired
	ResModifyService resModifyService;
	@Autowired
	ResDelService resDelService;
	
	// 살롱
	@RequestMapping(value = "salon", method = RequestMethod.GET)
	public String salonRes(HttpSession session, Model model) throws Exception {
		listService.getResList(session, model);
		return "member/reserve/salon/reserveList";
	}
	@RequestMapping(value = "salon/resInfo", method = RequestMethod.GET)
	public String salonResInfo(@RequestParam(value = "reservCode") String reservCode, HttpSession session, Model model) throws Exception {
		infoService.getReserve(reservCode, session, model);
		return "member/reserve/salon/reserveInfo";
	}
	@RequestMapping(value = "salon/resChange", method = RequestMethod.GET)
	public String salonResModi(@RequestParam(value = "reservCode") String reservCode, SalonReserveCommand salonReserveCommand, HttpSession session, Model model) throws Exception {
		modifyInfoService.getInfo(reservCode, salonReserveCommand, session, model);
		return "member/reserve/salon/modify";
	}
	@RequestMapping(value = "salon/resChangeAct", method = RequestMethod.POST)
	public String salonResAct(SalonReserveCommand salonReserveCommand, HttpSession session) throws Exception {
		resModifyService.updateRes(salonReserveCommand, session);
		return "redirect:/main/reserve/salon";
	}
	@RequestMapping(value = "salon/cancle",  method = RequestMethod.GET)
	public String salonCancle(@RequestParam(value = "reservCode") String reservCode) throws Exception {
		resDelService.salonCancle(reservCode);
		return "redirect:/main/reserve/salon";
	}
}
