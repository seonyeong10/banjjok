package banjjok.mapper;

import org.springframework.stereotype.Repository;

import banjjok.domain.SalonReserveDTO;
import banjjok.domain.SalonresInfoDTO;

@Repository
public interface SalonReserveMapper {

	public void insertRes(SalonReserveDTO dto) throws Exception;

	public String getCode() throws Exception;

	public SalonresInfoDTO getInfo(SalonReserveDTO dto) throws Exception;

}
