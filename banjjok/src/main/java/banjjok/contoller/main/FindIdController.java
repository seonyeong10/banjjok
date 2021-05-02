package banjjok.contoller.main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import banjjok.service.FindService;

@Controller
@RequestMapping(value = "banjjok")
public class FindIdController {
	@Autowired
	FindService findService;
	
	@RequestMapping(value = "checkPh", method = RequestMethod.GET)
	public String checkPh() {
		return "login/checkPh";
	}
	@RequestMapping(value = "findId", method = RequestMethod.POST)
	public String findId(@RequestParam(value = "userPh") String userPh, Model model) throws Exception {
		findService.find(userPh, model);
		return "login/find";
	}
}
