package banjjok.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import banjjok.domain.StyleDTO;

@Repository
public interface StyleMapper {
	public String getCode() throws Exception;
	public Integer insert(StyleDTO dto) throws Exception;
	public List<StyleDTO> getStyle(String desnId) throws Exception;

}
