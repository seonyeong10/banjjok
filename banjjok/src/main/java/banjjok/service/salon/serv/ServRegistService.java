package banjjok.service.salon.serv;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.command.SalonServCommand;
import banjjok.domain.DesnDTO;
import banjjok.domain.SalonSDesnDTO;
import banjjok.domain.SalonServDTO;
import banjjok.mapper.DesnMapper;
import banjjok.mapper.SalonSDesnMapper;
import banjjok.mapper.SalonServMapper;

@Component
@Service
public class ServRegistService {
	@Autowired
	SalonServMapper salonServMapper;
	@Autowired
	DesnMapper desnMapper;
	@Autowired
	SalonSDesnMapper salonSDesnMapper;

	public String addService(SalonServCommand salonServCommand, Model model) throws Exception {
		String path = "";
		String serviceCode = salonServCommand.getServiceCode();
		SalonServDTO dto = new SalonServDTO();
		dto.setServiceCateg(salonServCommand.getServiceCateg());
		dto.setServiceCode(serviceCode);
		dto.setServiceDesc(salonServCommand.getServiceDesc());
		dto.setServiceFee(salonServCommand.getServiceFee());
		dto.setServiceName(salonServCommand.getServiceName());
		dto.setServiceOpt(salonServCommand.getServiceOpt());
		dto.setServiceTarget(salonServCommand.getServiceTarget());
		dto.setServiceTime(salonServCommand.getServiceTime());
		Integer result = salonServMapper.insertMenu(dto);
		if(result > 0) path = "redirect:/salon/menu";
		else path ="redirect:/salon/menu/addService";
		
		// service_desn 테이블 저장
		DesnDTO desnDTO = new DesnDTO();
		List<DesnDTO> list = desnMapper.getDesnList(desnDTO);
		SalonSDesnDTO sDesnDTO = new SalonSDesnDTO();
		sDesnDTO.setServiceCode(serviceCode);
		for (int i = 0; i < list.size(); i++) {
			sDesnDTO.setDesnId(list.get(i).getDesnId());
			salonSDesnMapper.insert(sDesnDTO);
		}
		
		return path;
	}

}
