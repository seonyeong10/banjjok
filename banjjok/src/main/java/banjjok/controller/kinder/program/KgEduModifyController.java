package banjjok.controller.kinder.program;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import banjjok.command.ProgramCommand;
import banjjok.service.kinder.Program.EduListService;
import banjjok.service.kinder.Program.EduModifyService;
import banjjok.service.kinder.Program.EduUpdateService;

@Controller
@RequestMapping(value = "/banjjok/kinder/program")
public class KgEduModifyController {
	@Autowired
	EduModifyService eduModifyService;
	@Autowired
	EduUpdateService eduUpdateService;

	@RequestMapping(value = "modify/{pCode}", method = RequestMethod.GET)
	public String program(@PathVariable(value = "pCode") String pCode, Model model) throws Exception {
		eduModifyService.getProgram(pCode, model);
		return "/kinder/program/eduModify";
	}

	@RequestMapping(value = "modifyAct", method = RequestMethod.POST)
	public String modify(ProgramCommand programCommand, HttpSession session) throws Exception {
		eduUpdateService.update(programCommand, session);
		return "/banjjok/kinder/program";
	}
}
