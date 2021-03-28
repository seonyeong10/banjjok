package banjjok.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import banjjok.domain.StyleDTO;
import banjjok.domain.StyleInfoDTO;

@Repository
public interface StyleMapper {
	public String getCode() throws Exception;
	public Integer insert(StyleDTO dto) throws Exception;
	public List<StyleDTO> getStyle(StyleDTO styleDTO) throws Exception;
	public StyleInfoDTO getStyleInfo(StyleInfoDTO dto) throws Exception;
	public Integer update(StyleDTO dto) throws Exception;
	public Integer delete(StyleDTO dto) throws Exception;

}
