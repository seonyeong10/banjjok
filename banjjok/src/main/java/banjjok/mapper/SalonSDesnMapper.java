package banjjok.mapper;

import org.springframework.stereotype.Repository;

import banjjok.domain.SalonSDesnDTO;

@Repository
public interface SalonSDesnMapper {

	public Integer insert(SalonSDesnDTO sDesnDTO) throws Exception;

}
