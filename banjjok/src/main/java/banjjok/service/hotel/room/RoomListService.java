package banjjok.service.hotel.room;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.command.RoomCommand;
import banjjok.domain.PetSitterDTO;
import banjjok.domain.RoomDTO;
import banjjok.mapper.RoomMapper;

@Service
@Component
public class RoomListService {
	@Autowired
	RoomMapper roomMapper;
	
	public void getRoomList(Model model) throws Exception {
		// 객실 리스트 받아오기
		RoomDTO dto = new RoomDTO();
		List<PetSitterDTO> list = roomMapper.getRoomList(dto);
		model.addAttribute("lists", list);
		
		//객실 이미지들 받아오기
		
	}
	
}
