package banjjok.service.salon.desn;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import banjjok.command.DesnCommand;
import banjjok.domain.DesnDTO;
import banjjok.mapper.DesnMapper;

@Component
@Service
public class DesnDelService {
	@Autowired
	DesnMapper desnMapper;
	@Autowired
	PasswordEncoder passwordEncoder;

	public String desnDelete(DesnCommand desnCommand, HttpSession session) throws Exception {
		String location = "";
		DesnDTO dto = new DesnDTO();
		dto.setDesnId(desnCommand.getDesnId());
		dto = desnMapper.getDesnList(dto).get(0);
		if(!passwordEncoder.matches(desnCommand.getDesnPw(), dto.getDesnPw())) {
			location = "redirect:/salon/myPage";
		} else {
			desnMapper.deleteDesn(dto);
			location = "redirect:/salon";
		}
		return location;
	}

}
