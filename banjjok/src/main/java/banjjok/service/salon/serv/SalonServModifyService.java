package banjjok.service.salon.serv;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import banjjok.command.SalonServCommand;
import banjjok.domain.SalonServDTO;
import banjjok.mapper.SalonServMapper;

@Service
public class SalonServModifyService {
	@Autowired
	SalonServMapper salonServMapper;

	public void modifyMenu(SalonServCommand salonServCommand) throws Exception {
		SalonServDTO dto = new SalonServDTO();
		dto.setServiceCode(salonServCommand.getServiceCode());
		dto.setServiceDesc(salonServCommand.getServiceDesc());
		dto.setServiceFee(salonServCommand.getServiceFee());
		dto.setServiceName(salonServCommand.getServiceName());
		dto.setServiceOpt(salonServCommand.getServiceOpt());
		dto.setServiceTarget(salonServCommand.getServiceTarget());
		
		salonServMapper.modifyMenu(dto);
		System.out.println("메뉴 업데이트");
	}
	
}
