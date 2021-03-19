package banjjok.service.kinder.teacher;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.domain.ClassDTO;
import banjjok.mapper.ClassMapper;

@Service
@Component
public class ClassDelService {
	
	@Autowired
	ClassMapper classMapper;

	public void classDel(String cCode) throws Exception{
		ClassDTO dto = new ClassDTO();
		dto.setcCode(cCode);
		classMapper.classDel(dto);
	}
	
}
