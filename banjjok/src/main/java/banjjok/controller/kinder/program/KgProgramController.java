package banjjok.controller.kinder.program;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import banjjok.service.kinder.Program.EduListService;

@Controller
@RequestMapping(value = "/banjjok/kinder")
public class KgProgramController {
	@Autowired
	EduListService eduListService;
	
	@RequestMapping(value = "program")
	public String program(@RequestParam(value = "pCateg", defaultValue = "01") String pCateg, Model model) throws Exception {
		eduListService.programs(pCateg, model);
		return "/kinder/program/eduList";
	}
}
