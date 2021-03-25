package banjjok.controller.salon.reserve;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import banjjok.service.salon.reserve.LoadDesnService;

@Controller
@RequestMapping("/salon")
public class DesnReloadService {
	@Autowired
	LoadDesnService loadDesnService;
	@RequestMapping(value = "menu/loadDesn")
	public String loadDesn(@RequestParam(value = "year") String year, @RequestParam(value = "month") String month, @RequestParam(value = "date") String date, Model model) throws Exception {
		loadDesnService.load(year, month, date, model);
		return "salon/reserve/changeStatus";
	}
}
