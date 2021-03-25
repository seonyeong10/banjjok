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
import org.springframework.web.bind.annotation.RequestParam;

import banjjok.command.StyleCommand;
import banjjok.service.salon.style.StyleAddService;
import banjjok.service.salon.style.StyleInfoService;

@Controller
@RequestMapping(value = "/salon/style")
public class StyleBookController {
	@ModelAttribute
	StyleCommand setStyleCommand() {
		return new StyleCommand();
	}
	@Autowired
	StyleAddService styleAddService;
	@Autowired
	StyleInfoService styleInfoService;
	
	@RequestMapping(value = "addStyle", method = RequestMethod.GET)
	public String addStyle() {
		return "salon/designer/styleBook/styleForm";
	}
	@RequestMapping(value = "addStyleAct", method = RequestMethod.POST)
	public String regist(@Validated StyleCommand styleCommand, BindingResult result, HttpSession session, Model model) throws Exception {
		if(result.hasErrors()) {
			return "salon/designer/styleBook/styleForm";
		}
		String path = styleAddService.add(styleCommand, session, model);
		return path;
	}
	@RequestMapping(value = "desnStyle", method = RequestMethod.GET)
	public String styleInfo(@RequestParam(value = "styleCode") String styleCode, Model model) throws Exception {
		styleInfoService.getInfo(styleCode, model);
		return "salon/designer/styleBook/styleInfo";
	}
}
