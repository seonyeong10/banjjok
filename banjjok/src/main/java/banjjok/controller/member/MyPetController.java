package banjjok.controller.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import banjjok.command.PetCommand;
import banjjok.service.pet.AddPetService;
import banjjok.service.pet.MyPetService;
import banjjok.service.pet.PetModifyService;

@Controller
@RequestMapping(value = "/main")
public class MyPetController {
	@Autowired
	MyPetService myPetService;
	@Autowired
	PetModifyService petModifyService;
	@Autowired
	AddPetService addPetService;
	
	@RequestMapping(value = "myPet", method = RequestMethod.GET)
	public String myPet(HttpSession session, Model model) throws Exception {
		myPetService.getMyPet(session, model);
		return "/member/pet/myPet";
	}
	@RequestMapping(value = "myPetModify", method = RequestMethod.POST)
	public String petModify(PetCommand petCommand, HttpSession session) throws Exception {
		petModifyService.petModify(petCommand, session);
		return "redirect:/main/myPet";
	}
	@RequestMapping(value = "addPet", method = RequestMethod.GET)
	public String addPet() {
		return "member/pet/petForm";
	}
	@RequestMapping(value = "petRegist", method = RequestMethod.POST)
	public String petRegist(@Validated PetCommand petCommand, HttpSession session) throws Exception {
		addPetService.registPet(petCommand, session);
		return "redirect:/main/myPet";
	}
}
