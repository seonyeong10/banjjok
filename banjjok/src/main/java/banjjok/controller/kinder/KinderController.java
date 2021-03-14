package banjjok.controller.kinder;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class KinderController {
	
	@RequestMapping(value = "kinder", method = RequestMethod.GET)
	public String kinder() throws Exception {
		return "/kinder/kinderMain"; 
		
	}
}
