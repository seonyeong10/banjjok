package banjjok.controller.kinder.program;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import banjjok.command.ProgramCommand;
import banjjok.service.kinder.Program.EduCodeService;
import banjjok.service.kinder.Program.EduRegistService;

@Controller
@RequestMapping(value = "/banjjok/kinder/program")
public class KgEduRegistController {
	@ModelAttribute
	public ProgramCommand setProgramCommand() {
		return new ProgramCommand();
	}
	@Autowired
	EduCodeService eduCodeService;
	@Autowired
	EduRegistService eduRegistService;

	@RequestMapping(value = "regist", method = RequestMethod.GET)
	public String program(Model model) throws Exception {
		eduCodeService.getCode(model);
		return "/kinder/program/eduForm";
	}
	
	@RequestMapping(value = "registAct", method = RequestMethod.POST)
	public String registAct(@Validated ProgramCommand programCommand, BindingResult result, Model model, HttpSession session) throws Exception {
		if(result.hasErrors()) {
			return "redirect:/banjjok/kinder/program/regist";
		}
		String path = eduRegistService.regist(programCommand, model, session);
		return path;
	}
}
