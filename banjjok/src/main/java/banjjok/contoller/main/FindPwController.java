package banjjok.contoller.main;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import banjjok.command.LoginCommand;
import banjjok.service.ChangePwService;
import banjjok.service.IsExistService;

@Controller
@RequestMapping(value = "banjjok")
public class FindPwController {
	@Autowired
	IsExistService isExistService;
	@Autowired
	ChangePwService changePwService;
	
	@RequestMapping(value = "checkId", method = RequestMethod.GET)
	public String checkId() {
		return "login/checkId";
	}
	@RequestMapping(value = "isExist", method = RequestMethod.POST)
	public String isExist(@RequestParam(value = "userId") String userId, Model model, HttpSession session) throws Exception {
		isExistService.isExist(userId, model, session);
		return "salon/imgDel";
	}
	@RequestMapping(value = "authPh", method = RequestMethod.POST)
	public String authPh(@RequestParam(value = "userId") String userId, Model model) {
		model.addAttribute("userId", userId);
		return "login/authPh";
	}
	@RequestMapping(value = "newPw", method = RequestMethod.POST)
	public String newPw(@RequestParam(value = "userId") String userId, Model model) {
		model.addAttribute("userId", userId);
		return "login/createPw";
	}
	@RequestMapping(value = "modifyPw", method = RequestMethod.POST)
	public String modifyPw(LoginCommand loginCommand, HttpSession session) throws Exception {
		changePwService.change(loginCommand, session);
		return "login/fin";
	}
}
