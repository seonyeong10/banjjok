package banjjok.service.salon.serv;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.domain.SalonServDTO;
import banjjok.mapper.SalonServMapper;

@Service
public class ServListService {
	@Autowired
	SalonServMapper salonServMapper;

	public void getServiceList(Model model) throws Exception {
		String serviceCode = null;
		List<SalonServDTO> list = salonServMapper.getServiceList(serviceCode);
		model.addAttribute("list", list);
	}

}
