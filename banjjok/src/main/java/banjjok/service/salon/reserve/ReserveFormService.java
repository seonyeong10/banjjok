package banjjok.service.salon.reserve;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.command.SalonReserveCommand;
import banjjok.domain.DesnDTO;
import banjjok.domain.SalonServDTO;
import banjjok.mapper.DesnMapper;
import banjjok.mapper.SalonServMapper;

@Service
public class ReserveFormService {
	@Autowired
	SalonServMapper salonServMapper;
	@Autowired
	DesnMapper desnMapper;

	public void show(String serviceCode, SalonReserveCommand salonReserveCommand, Model model) throws Exception {
		// 서비스 메뉴
		SalonServDTO servDTO = new SalonServDTO();
		servDTO = salonServMapper.getServiceList(serviceCode).get(0);
		model.addAttribute("menu", servDTO);

		// 달력
		Calendar cal = Calendar.getInstance();
		
		// 화면에 체크할 날짜, 디자이너 휴무 여부 확인
		String selectMonth = salonReserveCommand.getMonth();
		String selectDate = salonReserveCommand.getDate();
		if (selectDate != null) {
			System.out.println("날짜 값 없음");
			cal.set(Calendar.DATE, Integer.parseInt(selectDate));
		}
		model.addAttribute("year", cal.get(Calendar.YEAR));
		model.addAttribute("date", cal.get(Calendar.DATE));
		model.addAttribute("dayOfWeek", cal.get(Calendar.DAY_OF_WEEK));
		
		ArrayList<Integer> preMonth = new ArrayList<Integer>();
		ArrayList<Integer> current = new ArrayList<Integer>();
		ArrayList<Integer> nextMonth = new ArrayList<Integer>();
		// 이번달
		model.addAttribute("currMonth", Calendar.MONTH + 1);
		cal.set(Calendar.DATE, 1);
		int fDayWeek = cal.get(Calendar.DAY_OF_WEEK); // 1일의 요일
		int preDistance = fDayWeek - 1; // 지난달 요일의 개수
		int maxDate = cal.getActualMaximum(Calendar.DATE); // 마지막일
		cal.set(Calendar.DATE, maxDate);
		int lDayWeek = cal.get(Calendar.DAY_OF_WEEK); // 마지막일의 요일
		// 지난달
		cal.add(Calendar.MONTH, -1);
		int preMaxDate = cal.getActualMaximum(Calendar.DATE); // 지난달 마지막일
		// 다음달

		for (int i = 0; i < preDistance; i++) {
			preMonth.add(preMaxDate - preDistance + 1 + i);
		}
		for (int i = 0; i < maxDate; i++) {
			current.add(i + 1);
		}
		for (int i = 0; i < 7 - lDayWeek; i++) {
			nextMonth.add(i + 1);
		}

		model.addAttribute("pre", preMonth);
		model.addAttribute("cur", current);
		model.addAttribute("next", nextMonth);

		// 디자이너
		DesnDTO desnDTO = new DesnDTO();
		List<DesnDTO> desnList = desnMapper.getDesnList(desnDTO);
		model.addAttribute("desn", desnList);

	}

}
