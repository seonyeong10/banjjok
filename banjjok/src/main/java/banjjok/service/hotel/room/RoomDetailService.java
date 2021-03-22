package banjjok.service.hotel.room;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.domain.RoomDTO;
import banjjok.mapper.RoomMapper;

@Service
@Component
public class RoomDetailService {
	@Autowired
	RoomMapper roomMapper;
	
	public void getRoomDetail(String roomName, Model model) throws Exception {
		RoomDTO dto = new RoomDTO();
		dto.setRoomName(roomName);
		List<RoomDTO> list = roomMapper.getRoomList(dto);
		model.addAttribute("list", list);
		
	}


}
