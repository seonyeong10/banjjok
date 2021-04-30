package banjjok.controller.salon.review;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("main/reserve/salon/review")
public class SalonModifyController {
	@RequestMapping(value = "modify", method = RequestMethod.GET)
	public String modify(@RequestParam(value = "userId") String userId, @RequestParam(value = "serviceCode") String serviceCode,
			Model model) {
		return "";
	}
}
