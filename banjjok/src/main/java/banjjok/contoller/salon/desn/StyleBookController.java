package banjjok.contoller.salon.desn;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import banjjok.command.StyleCommand;
import banjjok.service.salon.style.StyleAddService;
import banjjok.service.salon.style.StyleDelService;
import banjjok.service.salon.style.StyleInfoService;
import banjjok.service.salon.style.StyleModifyService;
import banjjok.service.salon.style.StyleUpdateService;

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
	@Autowired
	StyleModifyService styleModifyService;	// 수정폼 여는 서비스
	@Autowired	
	StyleUpdateService styleUpdateService;	// 수정하는 서비스
	@Autowired
	StyleDelService styleDelService;
	
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
	@RequestMapping(value = "modifyStyle/{styleCode}", method = RequestMethod.GET)
	public String modifyStyle(@PathVariable(value = "styleCode") String styleCode, Model model) throws Exception {
		styleModifyService.modifyStyle(styleCode, model);
		return "salon/designer/styleBook/styleModiForm";
	}
	@RequestMapping(value = "updateStyle", method = RequestMethod.POST)
	public String updateStyle(StyleCommand styleCommand, HttpSession session) throws Exception {
		styleUpdateService.update(styleCommand, session);
		return "redirect:/salon/style/desnStyle?styleCode=" + styleCommand.getStyleCode();
	}
	@RequestMapping(value = "styleDel", method = RequestMethod.POST)
	public String styleDel(@RequestParam(value = "styleCode") String styleCode, @RequestParam(value = "desnId") String desnId
			, Model model) throws Exception {
		styleDelService.delete(styleCode, desnId, model);
		return "salon/imgDel";
	}
}
