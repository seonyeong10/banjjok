package banjjok.service.mem.reserve;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.domain.AuthInfo;
import banjjok.domain.MemSalReserveDTO;
import banjjok.domain.SalonReserveDTO;
import banjjok.domain.SalonReviewDTO;
import banjjok.mapper.SalonReserveMapper;
import banjjok.mapper.SalonReviewMapper;

@Service
public class ListService {
	@Autowired
	SalonReserveMapper salonReserveMapper;
	@Autowired
	SalonReviewMapper salonReviewMapper;

	// 살롱 예약 리스트
	public void getResList(HttpSession session, Model model) throws Exception {
		MemSalReserveDTO memDTO = new MemSalReserveDTO();
		String memId = ((AuthInfo) session.getAttribute("authInfo")).getUserId();
		memDTO.setMemId(memId);
		List<MemSalReserveDTO> list = salonReserveMapper.getList(memDTO);
		model.addAttribute("list", list);
		
		// 리뷰 작성 버튼 제어
		SalonReviewDTO reviewDTO = new SalonReviewDTO();
		reviewDTO.setMemId(memId);
		List<MemSalReserveDTO> reviews = salonReviewMapper.isWrited(reviewDTO);
		model.addAttribute("reviews", reviews);
	}
	
}
