 package banjjok.controller.hotel.room;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import banjjok.command.RoomCommand;
import banjjok.service.hotel.room.RoomAutoService;
import banjjok.service.hotel.room.RoomDelService;
import banjjok.service.hotel.room.RoomDetailService;
import banjjok.service.hotel.room.RoomListService;
import banjjok.service.hotel.room.RoomModiService;
import banjjok.service.hotel.room.RoomRegistService;
import banjjok.service.hotel.room.RoomRegistService_mapVer;

@Controller
@RequestMapping("hotel")
public class RoomController {
	@Autowired
	RoomAutoService roomAutoService;
	@Autowired
	RoomRegistService roomRegistService;
	@Autowired
	RoomListService roomListService;
	@Autowired
	RoomRegistService_mapVer roomRegistService_mapVer;
	@Autowired
	RoomDetailService roomDetailService;
	@Autowired
	RoomModiService roomModiService;
	@Autowired
	RoomDelService roomDelService;
	
	@ModelAttribute
	public RoomCommand setRoomCommand() {
		return new RoomCommand();
	}
	
	@RequestMapping("roomList")
	public String roomList( Model model) throws Exception{
		roomListService.getRoomList(model);
		return "hotel/room/roomList";
	}
	@RequestMapping("roomRegist")
	public String roomRegist(RoomCommand roomCommand, Model model) throws Exception{
//		roomAutoService.createRoomCode(model);
		model.addAttribute(roomCommand);
		return "hotel/room/roomRegist";
	}
	@RequestMapping("roomRegistOk")
	public String roomRegistOk(RoomCommand roomCommand, Model model, MultipartHttpServletRequest mtfRequest, HttpSession session) throws Exception{
		roomRegistService.roomRegistOk(roomCommand, model, mtfRequest, session);
		return "redirect:/hotel/roomList";
	}
//	@RequestMapping("roomRegistOk") //map version
//	public String roomRegistOk_mapVer(RoomCommand roomCommand, HttpSession session) throws Exception{
//		roomRegistService_mapVer.roomRegistOk(roomCommand, session);
//		return "redirect:/hotel/roomList";
//	}
	@RequestMapping(value="roomDetail/{roomName}", method=RequestMethod.GET)
	public String roomDetail(@PathVariable(value="roomName")String roomName, Model model) throws Exception {
		roomDetailService.getRoomDetail(roomName, model);
		return "hotel/room/roomDetail";
	}
	@RequestMapping(value="roomModi", method=RequestMethod.GET)
	public String roomModi(RoomCommand roomCommand, Model model, HttpSession session) throws Exception {
		roomModiService.roomModify(roomCommand, model, session);
		return "hotel/room/roomModify";
	}
	@RequestMapping(value="roomModifyPro", method=RequestMethod.POST)
	public String roomModifyPro(@Validated RoomCommand roomCommand, BindingResult result ,Model model, MultipartHttpServletRequest mtfRequest) throws Exception {
		String location =roomModiService.roomModifyPro(roomCommand, model, mtfRequest);
//		return "redirect:roomDetail/{roomName}";
		return location;
	}
	@RequestMapping(value="roomDel", method=RequestMethod.POST)
	public String roomDel(RoomCommand roomCommand, Model model, HttpSession session) throws Exception {
		roomDelService.roomDel(roomCommand, model, session);
		return "redirect:roomList";
	}

}
