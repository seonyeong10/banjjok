package banjjok.controller.hotel.petSitter;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import banjjok.command.PetSitterCommand;
import banjjok.service.hotel.petSitter.PetSitterJoinService;
import banjjok.service.hotel.petSitter.PetSitterListService;

@Controller
@RequestMapping("hotel")
public class PetSitterController {
	@Autowired
	PetSitterJoinService petSitterJoinService;
	@Autowired
	PetSitterListService petSitterListService;
	
	@RequestMapping("registSitter")
	public String registSitter() {
		return "hotel/petSitter/petSitterForm";
	}
	@RequestMapping(value = "sitterJoin", method = RequestMethod.POST)
	public String sitterJoin(@Validated PetSitterCommand sitterCommand, BindingResult result, Model model, HttpSession session) throws Exception {
		Integer cnt = petSitterJoinService.insertSitter(sitterCommand, model, session);
		if(result.hasErrors() || cnt == null) {
			return "hotel/petSitter/petSitterForm";
		}
		return "redirect:/hotel";
	}
	@RequestMapping("sitterList")
	public String sitterList(Model model, HttpSession session) throws Exception {
		petSitterListService.sitterList(model, session);
		return "hotel/petSitter/petSitterList";
	}
}

