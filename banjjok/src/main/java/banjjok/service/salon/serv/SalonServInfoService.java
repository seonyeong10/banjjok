package banjjok.service.salon.serv;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.domain.MemSalReserveDTO;
import banjjok.domain.SalonReviewDTO;
import banjjok.domain.SalonServDTO;
import banjjok.mapper.SalonReviewMapper;
import banjjok.mapper.SalonServMapper;

@Service
public class SalonServInfoService {
	@Autowired
	SalonServMapper salonServMapper;
	@Autowired
	SalonReviewMapper salonReviewMapper;

	public void getMenuInfo(String serviceCode, Model model) throws Exception {
		SalonServDTO dto = new SalonServDTO();
		SalonReviewDTO rDTO = new SalonReviewDTO();
		MemSalReserveDTO mDTO = new MemSalReserveDTO();
		
		// 메뉴정보
		dto = ((List<SalonServDTO>) salonServMapper.getServiceList(serviceCode)).get(0);
		model.addAttribute("dto", dto);
		
		// 리뷰정보
		rDTO.setServiceCode(serviceCode);
//		List<MemSalReserveDTO> list = salonReviewMapper.getList(mDTO);
		List<SalonReviewDTO> list = salonReviewMapper.getList(rDTO);
		Integer count = salonReviewMapper.getCount(serviceCode);
		model.addAttribute("list", list);
		model.addAttribute("count", count);
	}
	
}
