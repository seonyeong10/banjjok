package banjjok.service.salon.serv;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import banjjok.mapper.SalonServMapper;

@Service
public class SalonServDelService {
	@Autowired
	SalonServMapper salonServMapper;

	public void delete(String serviceCode) throws Exception {
		salonServMapper.delete(serviceCode);
	}

}
