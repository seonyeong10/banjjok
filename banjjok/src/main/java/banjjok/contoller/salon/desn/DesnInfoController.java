package banjjok.contoller.salon.desn;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import banjjok.service.salon.DesnListService;
import banjjok.service.salon.desn.DesnInfoService;

@Controller
@RequestMapping(value = "salon")
public class DesnInfoController {
	@Autowired
	DesnListService desnListService;
	@Autowired
	DesnInfoService desnInfoService;
	
	@RequestMapping(value = "desn", method = RequestMethod.GET)
	public String desnList(Model model) throws Exception {
		desnListService.desnList(model);
		return "salon/designer/desnList";
	}
	@RequestMapping(value = "desn/{desnId}", method = RequestMethod.GET)
	public String desnInfo(@PathVariable(value = "desnId") String desnId, Model model) throws Exception {
		desnInfoService.show(desnId, model);
		return "salon/designer/desnInfo";
	}

}
