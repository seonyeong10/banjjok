package banjjok.service.salon.reserve;

import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.domain.DesnDTO;
import banjjok.domain.SalonRSDTO;
import banjjok.mapper.DesnMapper;
import banjjok.mapper.SalonReserveMapper;

@Service
public class LoadDesnService {
	@Autowired
	DesnMapper desnMapper;
	@Autowired
	SalonReserveMapper reserveMapper;

	public void load(String year, String month, String date, Model model) throws Exception {
		// 디자이너
		DesnDTO dto = new DesnDTO();
		List<DesnDTO> list = desnMapper.getDesnList(dto);
		model.addAttribute("desn", list);
		
		// 디자이너 예약현황
		SalonRSDTO rsDTO;
		String reservDate = year + "-" + month + "-" + date;
		System.out.println(reservDate);
		Map<String, List<SalonRSDTO>> rsMap = new HashMap<>();
		for (int i = 0; i < list.size(); i++) {
			String desnId = list.get(i).getDesnId();
//			rsDTO.setDesnId(desnId);
			rsDTO = new SalonRSDTO(reservDate, desnId);
			rsMap.put(desnId, reserveMapper.getResList(rsDTO));
		}
		model.addAttribute("rsMap", rsMap);
	}

}
