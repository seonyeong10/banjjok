package banjjok.contoller.salon.desn;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/salon/desn")
public class DesignerScheduleController {
	@RequestMapping(value = "schedule", method = RequestMethod.GET)
	public String schedule() {
		return "/salon/designer/desnSchedule";
	}
}
