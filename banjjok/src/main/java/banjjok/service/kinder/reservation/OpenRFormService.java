package banjjok.service.kinder.reservation;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.domain.AuthInfo;
import banjjok.domain.MyPetDTO;
import banjjok.domain.ProgramDTO;
import banjjok.domain.TeacherDTO;
import banjjok.mapper.MyPetMapper;
import banjjok.mapper.ProgramMapper;
import banjjok.mapper.TeacherMapper;
import banjjok.service.CalendarMaker;

@Service
public class OpenRFormService {
	@Autowired
	ProgramMapper programMapper;
	@Autowired
	MyPetMapper petMapper;
	@Autowired
	TeacherMapper teacherMapper;

	// 예약 폼 열기
	public void openForm(String pCode, Model model, HttpSession session) throws Exception {
		getProgram(pCode, model);	// 프로그램
		getPets(model, session);	// 펫
		getTch(model);				// 담당자(사회화 테스트의 경우만 선택)
		getCalendar(model);			// 달력
	}
	
	// 프로그램 정보 가져오기
	public void getProgram(String pCode, Model model) throws Exception {
		ProgramDTO dto = new ProgramDTO();
		dto.setpCode(pCode);
		dto = programMapper.programs(dto).get(0);
		model.addAttribute("program", dto);
	}
	
	// 회원 펫 정보 가져오기
	public void getPets(Model model, HttpSession session) throws Exception {
		MyPetDTO petDTO = new MyPetDTO();
		String memId = ((AuthInfo) session.getAttribute("authInfo")).getUserId();
		petDTO.setMemId(memId);
		List<MyPetDTO> petList = petMapper.getMyPet(petDTO);
		model.addAttribute("petList", petList);
	}
	
	// 선생님 정보 가져오기
	public void getTch(Model model) throws Exception {
		TeacherDTO dto = new TeacherDTO();
		dto.settState("01");	// 사회화테스터만 선택
		List<TeacherDTO> tchs = teacherMapper.enrollListup(dto);
		model.addAttribute("tchs", tchs);
	}
	
	// 달력 만들기
	public void getCalendar( Model model) {
		CalendarMaker maker = new CalendarMaker();
		maker.create(null, null, null, model);
	}

}
