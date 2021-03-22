package banjjok.service.hotel.room;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.command.RoomCommand;
import banjjok.domain.AuthInfo;
import banjjok.domain.RoomDTO;
import banjjok.mapper.RoomMapper;

@Service
@Component
public class RoomModiService {
	@Autowired
	RoomMapper roomMapper;
	public void roomModify(RoomCommand roomCommand, Model model, HttpSession session) throws Exception {
//		String userId = ((AuthInfo) session.getAttribute("authInfo")).getUserId();
		String roomName = roomCommand.getRoomName();
		RoomDTO dto = new RoomDTO();
		dto.setRoomName(roomName);
		List<RoomDTO> list = roomMapper.getRoomList(dto);
		model.addAttribute("list", list.get(0));
		
	}

}
