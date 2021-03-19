package banjjok.controller.hotel.room;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import banjjok.command.RoomCommand;
import banjjok.service.hotel.room.RoomListService;
import banjjok.service.hotel.room.RoomRegistService;

@Controller
@RequestMapping("hotel")
public class RoomController {
	@Autowired
	RoomRegistService roomRegistService;
	@Autowired
	RoomListService roomListService;
	
	@RequestMapping("roomList")
	public String roomList( Model model){
		roomListService.getRoomList(model);
		return "hotel/room/roomList";
	}
	@RequestMapping("roomRegist")
	public String roomRegist(){
		return "hotel/room/roomRegist";
	}
	@RequestMapping("roomRegistOk")
	public String roomRegistOk(RoomCommand roomCommand, HttpSession session){
		roomRegistService.roomRegistOk(roomCommand, session);
		return "redirect:/hotel/roomList";
	}

}
