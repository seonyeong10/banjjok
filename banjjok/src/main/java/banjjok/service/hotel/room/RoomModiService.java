package banjjok.service.hotel.room;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

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
	
	@Autowired
	PasswordEncoder passwordEncoder;
	public String roomModifyPro(RoomCommand roomCommand, Model model, MultipartHttpServletRequest mtfRequest) throws Exception {
		String location = null;
		RoomDTO dto = new RoomDTO();
		String roomName = dto.getRoomName();
		dto = roomMapper.getRoomList(dto).get(0); //수정할 데이터 DB에서 가져오기
		
		
		if(!passwordEncoder.matches(roomCommand.getRoomPw(), dto.getRoomPw())) {
			// 불일치한다면
			System.out.println("비밀번호 틀림");
			model.addAttribute("PwErr", "비밀번호가 다릅니다.");
			location = "redirect:/hotel/sitterInfo/"+roomName;
		} else {
			//파일
			String path = "WEB-INF/view/hotel/room/upload";
			String roomImg = "";
			List<MultipartFile> fileList = mtfRequest.getFiles("roomImg");
			MultipartFile mf = roomCommand.getRoomImg();
			String original = mf.getOriginalFilename();
			if (!original.equals("")) { //파일이 있다면
				String originalFileExtension = original.substring(original.lastIndexOf("."));
				String store = UUID.randomUUID().toString().replace("-", "") + originalFileExtension;
				roomImg = original + "`";
				String saveFile = path + System.currentTimeMillis() + original;
				try {
					mf.transferTo(new File(saveFile));
				} catch (IllegalStateException | IOException e) {
					e.printStackTrace();
				}
			} else {
				roomImg = dto.getRoomImg();
	//			if (roomImg.equals("")) {
	//				location = "redirect:/hotel/sitterInfo/" + roomName;
	//			}
			}
			dto.setRoomImg(roomImg);
			
			dto.setRoomCode(roomCommand.getRoomCode());
			dto.setRoomPrice(roomCommand.getRoomPrice());
			dto.setRoomDesc(roomCommand.getRoomDesc());
			
			Integer result = roomMapper.updateRoom(dto);
			if(result > 0) {
				location = "redirect:/hotel/roomDetail/" + roomCommand.getRoomName();
			}
//		}
		}
		return location;
	}

}
