package banjjok.service.salon.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.domain.MemSalReserveDTO;
import banjjok.domain.SalonReviewDTO;
import banjjok.mapper.SalonReviewMapper;

@Service
public class SalonReviewService {
	/**
	 * 리뷰 작성화면 서비스
	 */
	@Autowired
	SalonReviewMapper salonReviewMapper;
	public void view(String reservCode, Model model) throws Exception {
//		SalonReviewDTO dto = new SalonReviewDTO();
		MemSalReserveDTO dto = new MemSalReserveDTO();
		dto.setReservCode(reservCode);
		dto = ((List<MemSalReserveDTO>) salonReviewMapper.view(dto)).get(0);
		model.addAttribute("dto", dto);
	}
	
}
