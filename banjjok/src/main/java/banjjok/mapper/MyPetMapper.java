package banjjok.mapper;

import org.springframework.stereotype.Repository;

import banjjok.domain.MyPetDTO;

@Repository
public interface MyPetMapper {

	public Integer insertMyPet(MyPetDTO myPetDTO) throws Exception;

}
