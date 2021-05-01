package banjjok.controller.kinder.teacher;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import banjjok.service.kinder.teacher.EnrollDelService;

@Controller
@RequestMapping(value = "kinder/teacher")
public class KgTchDelController {
	@Autowired
	EnrollDelService enrollDelService;
	@RequestMapping(value = "myPage/delete", method = RequestMethod.GET)
	public String delete(@RequestParam(value = "tId") String tId) throws Exception {
		enrollDelService.enrollDel(tId);
		return "redirect:/kinder";
	}
}
