package banjjok.mapper;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import banjjok.domain.TeacherDTO;

@Repository
@Component
public interface TeacherMapper {
	public Integer teacherInsert(TeacherDTO dto) throws Exception;
}
