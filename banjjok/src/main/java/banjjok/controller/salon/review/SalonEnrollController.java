package banjjok.controller.salon.review;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import banjjok.command.SalonReviewCommand;
import banjjok.service.salon.review.SalonEnrollService;

@Controller
@RequestMapping("main/reserve/salon/review")
public class SalonEnrollController {
	@Autowired
	SalonEnrollService salonEnrollService;
	@RequestMapping(value = "enroll", method = RequestMethod.POST)
	public String enroll(SalonReviewCommand salonReviewCommand, BindingResult result, HttpSession session) throws Exception {
//		if(result.hasErrors()) {
		if(salonReviewCommand.getReview().equals("")) {
			return "redirect:/salon/review/write";
		}
		salonEnrollService.enroll(salonReviewCommand, session);
		return "redirect:/main/reserve/salon";
	}
}
