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
import banjjok.service.kinder.Program.EduDelService;
import banjjok.service.kinder.Program.EduListService;
import banjjok.service.kinder.Program.EduModifyService;
import banjjok.service.kinder.Program.EduUpdateService;

@Controller
@RequestMapping(value = "/banjjok/kinder/program")
public class KgEduDelController {
	@Autowired
	EduDelService eduDelService;
	
	@RequestMapping(value = "delete", method = RequestMethod.GET)
	public String delete(@RequestParam(value = "pCode") String pCode, @RequestParam(value = "file") String file, HttpSession session) throws Exception {
		eduDelService.delete(pCode, file, session);
		return "/banjjok/kinder/program";
	}
}
