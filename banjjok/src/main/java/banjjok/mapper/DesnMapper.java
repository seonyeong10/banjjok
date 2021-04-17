package banjjok.mapper;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import banjjok.domain.DesnDTO;
import banjjok.domain.DesnResDTO;
import banjjok.domain.MemSalReserveDTO;

@Component
@Repository
public interface DesnMapper {
	public Integer insertEmp(DesnDTO dto) throws Exception;
	public List<DesnDTO> getDesnList(DesnDTO dto) throws Exception;
	public Integer updateDesn(DesnDTO dto) throws Exception;
	public Integer deleteDesn(DesnDTO dto) throws Exception;
	public List<DesnResDTO> getResDates(MemSalReserveDTO reserveDTO) throws Exception;
	public String getDesnId() throws Exception;
}
