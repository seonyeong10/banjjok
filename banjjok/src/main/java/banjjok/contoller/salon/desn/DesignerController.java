package banjjok.contoller.salon.desn;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import banjjok.command.DesnCommand;
import banjjok.service.salon.desn.DesnRegistService;

@Controller
@RequestMapping(value = "salon", method = RequestMethod.GET)
public class DesignerController {
	@Autowired
	DesnRegistService desnRegistService;
	@ModelAttribute
	public DesnCommand setDesnCommand() {
		return new DesnCommand();
	}
	@RequestMapping(value = "regist", method = RequestMethod.GET)
	public String desnRegist() {
		return "salon/designer/desnForm";
	}
	@RequestMapping(value = "empRegistAct", method = RequestMethod.POST)
	public String desnForm(@Validated DesnCommand desnCommand, BindingResult result, Model model, HttpSession session) throws Exception {
		if(result.hasErrors()) {
			return "salon/designer/desnForm";
		}
		Integer cnt = desnRegistService.registDesn(desnCommand, model, session);
		if(cnt == null) return "salon/designer/desnForm";
		return "redirect:/salon";
	}
}
