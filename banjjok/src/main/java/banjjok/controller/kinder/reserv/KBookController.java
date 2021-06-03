package banjjok.controller.kinder.reserv;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import banjjok.command.KBookCommand;
import banjjok.command.KPayCommand;
import banjjok.service.kinder.reservation.KBookService;
import banjjok.service.kinder.reservation.KPayService;
import banjjok.service.kinder.reservation.OpenRFormService;

@Controller
@RequestMapping(value = "banjjok/kinder/program/reserve")
public class KBookController {
	@Autowired
	OpenRFormService openRFormService;
	@Autowired
	KBookService kBookService;
	@Autowired
	KPayService kPayService;

	@RequestMapping(value = "/{pCode}", method = RequestMethod.GET)
	public String openForm(@PathVariable(value = "pCode") String pCode, Model model, HttpSession session)
			throws Exception {
		openRFormService.openForm(pCode, model, session);
		return "kinder/reservation/k_reserve";
	}

	@RequestMapping(value = "booking", method = RequestMethod.POST)
	public String reserve(KBookCommand kBookCommand, Model model) throws Exception {
		kBookService.booking(kBookCommand, model);
		return "kinder/reservation/k_order";
	}

	@RequestMapping(value = "pay", method = RequestMethod.POST)
	public String pay(KPayCommand KPayCommand, Model model, HttpSession session) throws Exception {
		kPayService.pay(KPayCommand, model, session);
		return "kinder/reservation/k_orderFin";
	}

}
