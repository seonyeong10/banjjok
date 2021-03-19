package banjjok.controller.hotel.room;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import banjjok.command.RoomCommand;
import banjjok.service.hotel.room.RoomListService;
import banjjok.service.hotel.room.RoomRegistService;
import banjjok.service.hotel.room.RoomRegistService_mapVer;

@Controller
@RequestMapping("hotel")
public class RoomController {
	@Autowired
	RoomRegistService roomRegistService;
	@Autowired
	RoomListService roomListService;
	@Autowired
	RoomRegistService_mapVer roomRegistService_mapVer;
	
	@RequestMapping("roomList")
	public String roomList( Model model) throws Exception{
		roomListService.getRoomList(model);
		return "hotel/room/roomList";
	}
	@RequestMapping("roomRegist")
	public String roomRegist(RoomCommand roomCommand, Model model){
		model.addAttribute(roomCommand);
		return "hotel/room/roomRegist";
	}
	@RequestMapping("roomRegistOk")
	public String roomRegistOk(RoomCommand roomCommand, MultipartHttpServletRequest mtfRequest) throws Exception{
		roomRegistService.roomRegistOk(roomCommand, mtfRequest);
		return "redirect:/hotel/roomList";
	}
//	@RequestMapping("roomRegistOk") //map version
//	public String roomRegistOk_mapVer(RoomCommand roomCommand, HttpSession session) throws Exception{
//		roomRegistService_mapVer.roomRegistOk(roomCommand, session);
//		return "redirect:/hotel/roomList";
//	}

}
