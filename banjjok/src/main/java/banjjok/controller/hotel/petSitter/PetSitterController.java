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
import banjjok.service.hotel.petSitter.PetSitterDelService;
import banjjok.service.hotel.petSitter.PetSitterInfoService;
import banjjok.service.hotel.petSitter.PetSitterJoinService;
import banjjok.service.hotel.petSitter.PetSitterListService;
import banjjok.service.hotel.petSitter.PetSitterModifyService;

@Controller
@RequestMapping("hotel")
public class PetSitterController {
	@Autowired
	PetSitterJoinService petSitterJoinService;
	@Autowired
	PetSitterListService petSitterListService;
	@Autowired
	PetSitterInfoService petSitterInfoService;
	@Autowired
	PetSitterModifyService petSitterModifyService;
	@Autowired
	PetSitterDelService petSitterDelService;
	
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
	public String sitterInfo(@PathVariable(value="sitterId")String sitterId, Model model, PetSitterCommand petSitterCommand) throws Exception {
		petSitterInfoService.sitterInfo(sitterId, model, petSitterCommand);
		return "hotel/petSitter/petSitterInfo";
	}
	@RequestMapping(value = "sitterModify", method = RequestMethod.POST)
	public String sitterModify(@Validated PetSitterCommand sitterCommand, BindingResult result, Model model, HttpSession session) throws Exception {
		String location = petSitterModifyService.sitterModify(sitterCommand, model, session);
//		return "redirect:sitterList";
		return location;
	}
	@RequestMapping(value = "sitterDel", method = RequestMethod.POST)
	public String sitterDel(PetSitterCommand sitterCommand,Model model, HttpSession session) throws Exception {
		petSitterDelService.sitterDel(sitterCommand, model, session);
		return "redirect:sitterList";
	}
	
}
