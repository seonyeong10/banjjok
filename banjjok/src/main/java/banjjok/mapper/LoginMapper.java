package banjjok.mapper;

import java.util.List;

import banjjok.domain.LoginDTO;

public interface LoginMapper {
	List<LoginDTO> getUsers(LoginDTO dto) throws Exception;

}
