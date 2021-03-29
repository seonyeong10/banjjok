package banjjok.mapper;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import banjjok.domain.HotelBookDTO;
import banjjok.domain.MemHotelBookDTO;

@Repository
@Component
public interface HotelBookMapper {
	public String createCode();
	public Integer insertBook(HotelBookDTO dto) throws Exception;
	public void insertBookList(HotelBookDTO dto) throws Exception;
	public List<MemHotelBookDTO> getBookInfoList(MemHotelBookDTO dto) throws Exception;
	
}
