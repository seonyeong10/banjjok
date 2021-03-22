package banjjok.service.kinder.teacher;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import banjjok.domain.TeacherDTO;
import banjjok.mapper.TeacherMapper;


@Service
@Component
public class EnrollDelService {
	
	@Autowired
	TeacherMapper teacherMapper;

	public void enrollDel(String tId) throws Exception{
		TeacherDTO dto = new TeacherDTO();
		dto.settId(tId);
		
		teacherMapper.enrollDel(dto);
		
	}

}
