package banjjok.contoller.main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import banjjok.command.SignUpCommand;
import banjjok.service.mem.RegistService;

@Controller
public class SignUpController {
	@ModelAttribute
	SignUpCommand setSignUpCommand() {
		return new SignUpCommand();
	}
	@Autowired
	RegistService registService; 
	
	@RequestMapping(value = "signUp", method = RequestMethod.GET)
	public String signUp() {
		return "login/signUpForm";
	}
//	@RequestMapping(value = "checkMem", method = RequestMethod.POST)
//	public String chcekMem(@Validated SignUpCommand signUpCommand, BindingResult result, Model model) {
//		System.out.println(result.hasErrors());
//		if(result.hasErrors()) {
//			model.addAttribute("isErr", true);
////			return "login/signUpForm";
//			return "login/checkMem";
//		}
//		return "redirect:/signUp";
//	}
	@RequestMapping(value = "registMem", method = RequestMethod.POST)
	public String registMem(@Validated SignUpCommand signUpCommand, BindingResult result, Model model) throws Exception {
		if(result.hasErrors()) {
			return "login/signUpForm";
		}
		String path = registService.regist(signUpCommand, model);
		return path;
	}
	
}
