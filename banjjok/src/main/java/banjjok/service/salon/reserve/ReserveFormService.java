package banjjok.service.salon.reserve;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.command.SalonReserveCommand;
import banjjok.domain.AuthInfo;
import banjjok.domain.DesnDTO;
import banjjok.domain.DesnResDTO;
import banjjok.domain.MyPetDTO;
import banjjok.domain.SalonRSDTO;
import banjjok.domain.SalonReserveDTO;
import banjjok.domain.SalonServDTO;
import banjjok.mapper.DesnMapper;
import banjjok.mapper.MyPetMapper;
import banjjok.mapper.SalonReserveMapper;
import banjjok.mapper.SalonServMapper;
import banjjok.service.CalendarMaker;

@Service
public class ReserveFormService {
	@Autowired
	SalonServMapper salonServMapper;
	@Autowired
	DesnMapper desnMapper;
	@Autowired
	MyPetMapper petMapper;
	@Autowired
	SalonReserveMapper reserveMapper;

	public void show(String serviceCode, SalonReserveCommand salonReserveCommand, Model model, HttpSession session) throws Exception {
		// 서비스 메뉴
		SalonServDTO servDTO = new SalonServDTO();
		servDTO = salonServMapper.getServiceList(serviceCode).get(0);
		model.addAttribute("menu", servDTO);
		
		// 펫 정보
		MyPetDTO petDTO = new MyPetDTO();
		String memId = ((AuthInfo) session.getAttribute("authInfo")).getUserId();
		petDTO.setMemId(memId);
		List<MyPetDTO> petList = petMapper.getMyPet(petDTO);
		model.addAttribute("petList", petList);

		// 달력
		String selectYear = salonReserveCommand.getYear();
		String selectMonth = salonReserveCommand.getMonth();
		String selectDate = salonReserveCommand.getDate();
		CalendarMaker maker = new CalendarMaker();
		maker.create(selectYear, selectMonth, selectDate, model);
		
		// 디자이너
		DesnDTO desnDTO = new DesnDTO();
		List<DesnDTO> desnList = desnMapper.getDesnList(desnDTO);
		model.addAttribute("desn", desnList);
		
		// 디자이너 예약현황
		SalonRSDTO rsDTO = new SalonRSDTO();
//		rsDTO.setServiceCode(serviceCode);
		Map<String, List<SalonRSDTO>> rsMap = new HashMap<>();
		for (int i = 0; i < desnList.size(); i++) {
			String desnId = desnList.get(i).getDesnId();
			rsDTO.setDesnId(desnId);
			rsMap.put(desnId, reserveMapper.getResList(rsDTO));
		}
//		List<SalonRSDTO> rsList =  reserveMapper.getResList(rsDTO);
		model.addAttribute("rsMap", rsMap);
	}

}
