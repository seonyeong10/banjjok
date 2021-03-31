package banjjok.controller.kinder.reserv;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import banjjok.command.ReservCommand;
import banjjok.service.kinder.reservation.ReservFormService;
import banjjok.service.kinder.reservation.ReservationOkService;
import banjjok.service.kinder.teacher.ProgramDetailService;

@Controller
@RequestMapping(value = "kinderReserv")
public class ReservationController {
	
	@Autowired
	ProgramDetailService programDetailService;
	@Autowired
	ReservFormService reservFormService;
	@Autowired
	ReservationOkService reservationOkService;
	
	@ModelAttribute
	ReservCommand setreservCommand() {
		return new ReservCommand();
	}

	@RequestMapping(value = "reservationForm", method = RequestMethod.GET)
	public String reservationForm(@RequestParam(value="pCode", required = false) String pCode, Model model, ReservCommand reservCommand, HttpSession session) throws Exception{
		reservFormService.reservForm(pCode, model, reservCommand, session);
		return "kinder/admin/reservationForm";
	}
	
	@RequestMapping(value = "pPrice", method = RequestMethod.POST)
	public String getFee(@RequestParam(value = "pCode") String pCode, Model model) throws Exception {
		programDetailService.programDetail(pCode, model);
		return "kinder/admin/imageDel2";
	}
	
	@RequestMapping(value = "reservationOk", method = RequestMethod.POST)
	public String reservationOk(@RequestParam(value="pCode", required = false) String pCode, ReservCommand reservCommand, HttpSession session) throws Exception {
		reservationOkService.reservationOk(pCode, reservCommand, session);
		return "kinder/admin/reservationOk";
	}
}
