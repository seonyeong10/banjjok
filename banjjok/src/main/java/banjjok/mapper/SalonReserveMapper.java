package banjjok.mapper;

import org.springframework.stereotype.Repository;

import banjjok.domain.SalonPayDTO;
import banjjok.domain.SalonReserveDTO;

@Repository
public interface SalonReserveMapper {
	public Integer insertRes(SalonReserveDTO dto) throws Exception;
	public String getCode() throws Exception;
	public Integer insertResList(SalonReserveDTO reserveDTO) throws Exception;
	public Integer insertPay(SalonPayDTO payDTO) throws Exception;
}
