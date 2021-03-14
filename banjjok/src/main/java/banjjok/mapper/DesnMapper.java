package banjjok.mapper;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import banjjok.domain.DesnDTO;

@Component
@Repository
public interface DesnMapper {
	public Integer insertEmp(DesnDTO dto) throws Exception;
	public List<DesnDTO> getDesnList(DesnDTO dto) throws Exception;
}