package banjjok.service.kinder.reservation;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import banjjok.command.ReservCommand;
import banjjok.domain.MyPetDTO;
import banjjok.domain.ProgramDTO;

@Service
@Component
public class ReservationOkService {
	
//	@Autowired
//	ReservMapper reservMapper;

	public void reservationOk(String pCode, ReservCommand reservCommand, HttpSession session) throws Exception{
		
		// program
		ProgramDTO programDTO = new ProgramDTO();
		programDTO.setpCode(pCode);
		programDTO.setpPrice(reservCommand.getpPrice());
		
		// pet
		MyPetDTO petDTO = new MyPetDTO();
		petDTO.setPetId(reservCommand.getPetId());
		
		// booking
		
		
	}

}
