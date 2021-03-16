package banjjok.service.salon.serv;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.domain.SalonServDTO;
import banjjok.mapper.SalonServMapper;

@Service
public class ServCodeService {
	@Autowired
	SalonServMapper salonServMapper;

	public void getCode(Model model) throws Exception {
		SalonServDTO dto = new SalonServDTO();
		String styleCode = "";
		SimpleDateFormat sdf = new SimpleDateFormat("yyMMdd");
		Date dt = new Date();
		String date = sdf.format(dt);
		String serviceCode = date + salonServMapper.getCode();
		
		model.addAttribute("serviceCode", serviceCode);
	}

}
