package banjjok.service.kinder.reservation;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.command.ReservCommand;
import banjjok.domain.AuthInfo;
import banjjok.domain.MyPetDTO;
import banjjok.domain.ProgramDTO;
import banjjok.mapper.MyPetMapper;
import banjjok.mapper.ProgramMapper;
import banjjok.service.CalendarMaker;

@Service
@Component
public class ReservFormService {
	
	@Autowired
	ProgramMapper programMapper;
	@Autowired
	MyPetMapper myPetMapper;

	public void reservForm(String pCode, Model model, ReservCommand reservCommand, HttpSession session) throws Exception{
		
		// program
		ProgramDTO programDTO = new ProgramDTO();
		programDTO.setpCode(pCode);
		programDTO = programMapper.programListup(programDTO).get(0);
		model.addAttribute("program", programDTO);
		
		// pet
		MyPetDTO petDTO = new MyPetDTO();
		String memId = ((AuthInfo) session.getAttribute("authInfo")).getUserId();
		petDTO.setMemId(memId);
		List<MyPetDTO> petList = myPetMapper.getMyPet(petDTO);
		model.addAttribute("petList", petList);
		
		// calendar
//		String selectedYear = reservCommand.getYear();
//		String selectedMonth = reservCommand.getMonth();
//		String selectedDate = reservCommand.getBlDate();
//		CalendarMaker maker = new CalendarMaker();
//		maker.create(selectedYear, selectedMonth, selectedDate, model);
		
	}

}
