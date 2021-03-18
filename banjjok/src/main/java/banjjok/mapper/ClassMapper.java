package banjjok.mapper;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import banjjok.domain.ClassDTO;

@Repository
@Component
public interface ClassMapper {
	public Integer classInsert(ClassDTO dto) throws Exception;
	public List<ClassDTO> classListup(ClassDTO dto) throws Exception;
	public Integer classDel(ClassDTO dto) throws Exception;
}
