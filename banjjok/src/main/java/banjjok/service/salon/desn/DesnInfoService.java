package banjjok.service.salon.desn;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.domain.AuthInfo;
import banjjok.domain.DesnDTO;
import banjjok.mapper.DesnMapper;

@Service
public class DesnInfoService {
	@Autowired
	DesnMapper desnMapper;
	public void getInfo(Model model, HttpSession session) throws Exception {
		DesnDTO dto = new DesnDTO();
		AuthInfo authInfo = (AuthInfo) session.getAttribute("authInfo");
		String desnId = authInfo.getUserId();
		dto.setDesnId(desnId);
		List<DesnDTO> list = desnMapper.getDesnList(dto);
		model.addAttribute("list", list.get(0));
		
	}
	
}
