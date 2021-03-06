package banjjok.mapper;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import banjjok.domain.ProgramDTO;

@Repository
@Component
public interface ProgramMapper {
	public void programInsert(ProgramDTO dto) throws Exception;
	public List<ProgramDTO> programListup(ProgramDTO dto) throws Exception;
	public Integer programModify(ProgramDTO dto) throws Exception;
	
	public String getCode() throws Exception;
	public Integer regist(ProgramDTO dto) throws Exception;
	public List<ProgramDTO> programs(ProgramDTO dto) throws Exception;
	public ProgramDTO getProgram(ProgramDTO dto) throws Exception;
	public Integer update(ProgramDTO dto) throws Exception;
	public void delete(ProgramDTO dto) throws Exception;
}
