package banjjok.mapper;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import banjjok.domain.TeacherDTO;

@Repository
@Component
public interface TeacherMapper {
	public Integer teacherInsert(TeacherDTO dto) throws Exception;
	public List<TeacherDTO> enrollListup(TeacherDTO dto) throws Exception;
	public Integer enrollModify(TeacherDTO dto) throws Exception;
	public void enrollDel(TeacherDTO dto) throws Exception;
}
