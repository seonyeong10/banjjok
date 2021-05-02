package banjjok.contoller.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	@RequestMapping(value = "banjjok", method = RequestMethod.GET)
	public String home() {
		return "main";
	}
	@RequestMapping(value = "/")
	public String goHome() {
		return "redirect:/banjjok";
	}
}
