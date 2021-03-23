package banjjok.service;

import java.util.ArrayList;
import java.util.Calendar;

import org.springframework.ui.Model;

import banjjok.command.SalonReserveCommand;

public class CalendarMaker {

	public void create(SalonReserveCommand salonReserveCommand, Model model) {
		Calendar cal = Calendar.getInstance();
		
		// 화면에 체크할 날짜, 디자이너 휴무 여부 확인
//		String selectMonth = salonReserveCommand.getMonth();
//		String selectMonth = null;
//		String selectDate = null;
//		if(salonReserveCommand.getMonth() != null) {
//			selectMonth = salonReserveCommand.getMonth();
//		}
//		if(salonReserveCommand.getDate() != null) {
//			selectDate = salonReserveCommand.getDate();
//		} else {
//			cal.set(Calendar.DATE, Integer.parseInt(selectDate));
//		}
//		if (selectDate != null) {
//		}
		
		String selectDate = salonReserveCommand.getDate();
		if (selectDate != null) {
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
		
	}
	
}
