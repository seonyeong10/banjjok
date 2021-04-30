package banjjok.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import banjjok.domain.MemSalReserveDTO;
import banjjok.domain.SalonReserveDTO;
import banjjok.domain.SalonReviewDTO;

@Repository
public interface SalonReviewMapper {

	public List<SalonReviewDTO> view(SalonReviewDTO rDTO) throws Exception;
	public Integer enroll(SalonReviewDTO dto) throws Exception;
	public List<SalonReviewDTO> getList(SalonReviewDTO rDTO) throws Exception;
	public Integer getCount(String serviceCode);
	public List<MemSalReserveDTO> isWrited(SalonReviewDTO reviewDTO) throws Exception;

}
