package testSpringBoot.contoller.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	@RequestMapping(value = "/")
	public String home() {
		return "thymeleaf/main";
	}
}
