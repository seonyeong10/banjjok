package banjjok.controller.kinder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import banjjok.service.kinder.KgMainService;



@Controller
//@RequestMapping(value="kinderMain")
public class KinderController {
	@Autowired
	KgMainService kgMainService;
	
//	@RequestMapping(value = "home", method = RequestMethod.GET)
//	public String kinder() throws Exception {
//		return "kinder/kinderMain"; 
//	}
	@RequestMapping(value = "kinder", method = RequestMethod.GET)
	public String main(Model model) throws Exception {
		kgMainService.view(model);
		return "/kinder/kgMain";
	}
	
	
}
