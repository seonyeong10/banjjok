package banjjok.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import banjjok.domain.SalHeartDTO;
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
	public Integer getCount(StyleDTO styleDTO) throws Exception;
	public List<SalHeartDTO> getHeart(SalHeartDTO heartDTO) throws Exception;
	public Integer insertHeart(SalHeartDTO heartDTO) throws Exception;
	public Integer updateHt(SalHeartDTO heartDTO) throws Exception;
	public Integer getHtCount(SalHeartDTO heartDTO) throws Exception;

}
