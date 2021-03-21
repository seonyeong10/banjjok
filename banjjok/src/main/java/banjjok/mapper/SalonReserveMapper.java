package banjjok.mapper;

import org.springframework.stereotype.Repository;

import banjjok.domain.SalonReserveDTO;

@Repository
public interface SalonReserveMapper {

	public void insertRes(SalonReserveDTO dto) throws Exception;

}
