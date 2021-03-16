package banjjok.controller.hotel.petSitter;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import banjjok.command.PetSitterCommand;
import banjjok.service.hotel.petSitter.PetSitterInfoService;
import banjjok.service.hotel.petSitter.PetSitterJoinService;
import banjjok.service.hotel.petSitter.PetSitterListService;

@Controller
@RequestMapping("hotel")
public class PetSitterController {
	@Autowired
	PetSitterJoinService petSitterJoinService;
	@Autowired
	PetSitterListService petSitterListService;
	@Autowired
	PetSitterInfoService petSitterInfoService;
	
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
	public String sitterList(Model model) throws Exception {
		petSitterListService.sitterList(model);
		return "hotel/petSitter/petSitterList";
	}
	@RequestMapping(value = "sitterInfo/{sitterId}", method = RequestMethod.GET)
	public String sitterInfo(@PathVariable(value="sitterId")String sitterId, Model model) throws Exception {
		petSitterInfoService.sitterInfo(sitterId, model);
		return "hotel/petSitter/petSitterInfo";
	}
}

