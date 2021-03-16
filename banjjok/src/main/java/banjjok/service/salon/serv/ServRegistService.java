package banjjok.service.salon.serv;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.command.SalonServCommand;
import banjjok.domain.SalonServDTO;
import banjjok.mapper.SalonServMapper;

@Component
@Service
public class ServRegistService {
	@Autowired
	SalonServMapper salonServMapper;

	public String addService(SalonServCommand salonServCommand, Model model) throws Exception {
		String path = "";
		SalonServDTO dto = new SalonServDTO();
		dto.setServiceCateg(salonServCommand.getServiceCateg());
		dto.setServiceCode(salonServCommand.getServiceCode());
		dto.setServiceDesc(salonServCommand.getServiceDesc());
		dto.setServiceFee(salonServCommand.getServiceFee());
		dto.setServiceName(salonServCommand.getServiceName());
		dto.setServiceOpt(salonServCommand.getServiceOpt());
		dto.setServiceTarget(salonServCommand.getServiceTarget());
		dto.setServiceTime(salonServCommand.getServiceTime());
		Integer result = salonServMapper.insertMenu(dto);
		if(result > 0) path = "redirect:/sevice/menu";
		else path ="redirect:/salon/addService";
		
		return path;
	}

}
