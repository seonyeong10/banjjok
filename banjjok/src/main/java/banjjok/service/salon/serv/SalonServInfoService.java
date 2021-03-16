package banjjok.service.salon.serv;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.domain.SalonServDTO;
import banjjok.mapper.SalonServMapper;

@Service
public class SalonServInfoService {
	@Autowired
	SalonServMapper salonServMapper;

	public void getMenuInfo(String serviceCode, Model model) throws Exception {
		SalonServDTO dto = new SalonServDTO();
		dto = ((List<SalonServDTO>) salonServMapper.getServiceList(serviceCode)).get(0);
		model.addAttribute("dto", dto);
	}
	
}
