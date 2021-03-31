package banjjok.service.hotel.book;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.domain.AuthInfo;
import banjjok.domain.MyPetDTO;
import banjjok.domain.PetSitterDTO;
import banjjok.domain.RoomDTO;
import banjjok.mapper.MyPetMapper;
import banjjok.mapper.PetSitterMapper;
import banjjok.mapper.RoomMapper;
import banjjok.service.CalendarMaker;

@Service
@Component
public class BookFormService {
	@Autowired
	RoomMapper roomMapper;
	@Autowired
	MyPetMapper myPetMapper;
	@Autowired
	PetSitterMapper petSitterMapper;
	
	public void bookForm(String roomCode, Model model, HttpSession session) throws Exception {
		// 캘린더
		CalendarMaker maker = new CalendarMaker();
		String year = null;
		String month = null;
		String date = null;
		maker.create(year, month, date, model);
		
		// 객실
		RoomDTO rDto = new RoomDTO();
		rDto.setRoomCode(roomCode);
		rDto = roomMapper.getRoomList(rDto).get(0);
		model.addAttribute("room", rDto);
		
		
		// 펫
		MyPetDTO pDto = new MyPetDTO();
		String userId = ((AuthInfo)session.getAttribute("authInfo")).getUserId();
		pDto.setMemId(userId);
		List<MyPetDTO> pList = myPetMapper.getMyPet(pDto);
		model.addAttribute("petList", pList);
		
		
		// 펫시터
		PetSitterDTO dto = new PetSitterDTO();
		List<PetSitterDTO> sList = petSitterMapper.getSitterList(dto);
		model.addAttribute("sitterList", sList);
		
		for (int i = 0; i < sList.size(); i++) {
			System.out.println("펫시터:" + sList.get(i).getSitterId());
		}
	}
	
}
