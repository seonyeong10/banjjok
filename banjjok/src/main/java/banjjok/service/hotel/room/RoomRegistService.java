package banjjok.service.hotel.room;


import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import banjjok.command.RoomCommand;

@Service
@Component
public class RoomRegistService {

	public void roomRegistOk(RoomCommand roomCommand, HttpSession session) {
		// 객실 저장
	}
	
}
