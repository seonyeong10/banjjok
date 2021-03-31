package banjjok.contoller.salon.desn;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import banjjok.command.SalHeartCommand;
import banjjok.service.salon.DesnListService;
import banjjok.service.salon.desn.DesnInfoService;
import banjjok.service.salon.style.SalHeartService;

@Controller
@RequestMapping(value = "salon")
public class DesnInfoController {
	@Autowired
	DesnListService desnListService;
	@Autowired
	DesnInfoService desnInfoService;
	@Autowired
	SalHeartService salHeartService;
	
	@RequestMapping(value = "desn", method = RequestMethod.GET)
	public String desnList(Model model) throws Exception {
		desnListService.desnList(model);
		return "salon/designer/desnList";
	}
	@RequestMapping(value = "desn/{desnId}", method = RequestMethod.GET)
	public String desnInfo(@PathVariable(value = "desnId") String desnId, HttpSession session, Model model) throws Exception {
		desnInfoService.show(desnId, session, model);
		return "salon/designer/desnInfo";
	}
	@RequestMapping(value = "desn/unlock")
	public String unlock(SalHeartCommand heartCommand, HttpSession session, Model model) throws Exception {
		salHeartService.unlock(heartCommand, model);
//		desnInfoService.show(heartCommand.getDesnId(), session, model);
		return "salon/imgDel";
//		return "salon/designer/styleBook/styleHeart";
	}

}
