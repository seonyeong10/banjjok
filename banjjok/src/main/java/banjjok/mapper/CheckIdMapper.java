package banjjok.mapper;

import org.springframework.stereotype.Repository;

import banjjok.domain.LoginDTO;

@Repository
public interface CheckIdMapper {

	public LoginDTO checkId(String userId) throws Exception;

}
