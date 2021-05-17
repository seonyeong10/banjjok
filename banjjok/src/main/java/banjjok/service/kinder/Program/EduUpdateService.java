package banjjok.service.kinder.Program;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import banjjok.command.ProgramCommand;
import banjjok.domain.ProgramDTO;
import banjjok.mapper.ProgramMapper;

@Service
public class EduUpdateService {
	@Autowired
	ProgramMapper programMapper;

	public void update(ProgramCommand programCommand, HttpSession session) throws Exception {
		ProgramDTO dto = new ProgramDTO();
		dto.setpCode(programCommand.getpCode());
		dto = programMapper.programs(dto).get(0);
		
		// 파일삭제
		List<String> list = (List<String>) session.getAttribute("imgList");
		String filePath = session.getServletContext().getRealPath("/WEB-INF/view/kinder/upload");
		if (list != null) {
			for (int i = 0; i < list.size(); i++) {
				String img = list.get(i);
				dto.setpImg((dto.getpImg().replace(dto.getpImg(), "")));
				File file = new File(filePath + "/" + img);
				if (file.exists()) {
					file.delete();
				}
				session.removeAttribute("imgList");
			}
		}
		
		dto = new ProgramDTO(programCommand.getpCode(), programCommand.getpName(), programCommand.getpPrice(), 
			programCommand.getpContent(), "1", programCommand.getpTeacher(), programCommand.getpTarget(), dto.getpImg(), programCommand.getpCateg(), 
			programCommand.getpStart(), programCommand.getpEnd(), null);
		
		programMapper.update(dto);
		
	}

}
