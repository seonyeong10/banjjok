package banjjok.controller.salon.reserve;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import banjjok.service.salon.reserve.ChangeMonthService;

@Controller
@RequestMapping("/salon")
public class ChangeDateController {
	@Autowired
	ChangeMonthService changeMonthService;
	
	@RequestMapping(value = "menu/changeMonth")
	public String changeMonth(@RequestParam(value = "year") String year, @RequestParam(value = "month") String month, Model model) {
		changeMonthService.change(year, month, model);
		return "salon/reserve/calendar";
	}
}
