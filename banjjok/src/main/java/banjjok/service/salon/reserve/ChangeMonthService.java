package banjjok.service.salon.reserve;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.service.CalendarMaker;

@Service
public class ChangeMonthService {

	public void change(String year, String month, Model model) {
		CalendarMaker maker = new CalendarMaker();
		String date = null;
		maker.create(year, month, date, model);
	}

}
