package banjjok.mapper;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import banjjok.domain.PetSitterDTO;

@Component
@Repository(value = "banjjok.mapper")
public interface PetSitterMapper {
	public Integer insertSitter(PetSitterDTO petSitterDTO) throws Exception;

}
