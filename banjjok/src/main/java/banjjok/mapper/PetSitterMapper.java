package banjjok.mapper;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import banjjok.domain.PetSitterDTO;

@Component
@Repository
public interface PetSitterMapper {
	public Integer insertSitter(PetSitterDTO petSitterDTO) throws Exception;
	public List<PetSitterDTO> getSitterList(PetSitterDTO dto) throws Exception;

}
