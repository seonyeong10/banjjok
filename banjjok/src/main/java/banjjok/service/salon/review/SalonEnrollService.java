package banjjok.service.salon.review;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import banjjok.command.SalonReviewCommand;
import banjjok.domain.AuthInfo;
import banjjok.domain.SalonReviewDTO;
import banjjok.mapper.SalonReviewMapper;

@Service
public class SalonEnrollService {
	@Autowired
	SalonReviewMapper salonReviewMapper;

	public void enroll(SalonReviewCommand salonReviewCommand, HttpSession session) throws Exception {
		String memId = ((AuthInfo) session.getAttribute("authInfo")).getUserId();
		String grade = ((AuthInfo) session.getAttribute("authInfo")).getGrade();
		String step;
		if(grade.equals("mem")) step = "1";
		else step = "2";
		SalonReviewDTO dto = new SalonReviewDTO(memId, salonReviewCommand.getServiceCode(), salonReviewCommand.getStar(), 
				salonReviewCommand.getReview(), step, salonReviewCommand.getReservCode());
		salonReviewMapper.enroll(dto);
	}
	
}
