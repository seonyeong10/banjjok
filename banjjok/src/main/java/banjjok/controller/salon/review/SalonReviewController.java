package banjjok.controller.salon.review;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import banjjok.service.salon.review.SalonReviewService;

@Controller
@RequestMapping("main/reserve/salon/review")
public class SalonReviewController {
	@Autowired
	SalonReviewService salonReviewService;
	@RequestMapping(value = "write/{reservCode}", method = RequestMethod.GET)
	public String write(@PathVariable(value = "reservCode") String reservCode, Model model) throws Exception {
		salonReviewService.view(reservCode, model);
		return "/salon/review/writeReview";
	}
}
