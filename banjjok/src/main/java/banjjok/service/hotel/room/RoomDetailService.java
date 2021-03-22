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
		System.out.println("코드 : " + dto.getRoomCode());
		System.out.println("이름 : " + dto.getRoomName());
		System.out.println("이미지 : " + dto.getRoomImg());
		System.out.println("가격 : " + dto.getRoomPrice());
		System.out.println("내용 : " + dto.getRoomDesc());
		model.addAttribute("list", list);
		
	}


}
