package banjjok.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import banjjok.domain.LoginDTO;
import banjjok.domain.MemberDTO;

@Repository
public interface LoginMapper {
	List<LoginDTO> getUsers(LoginDTO dto) throws Exception;

	LoginDTO find(String userPh) throws Exception;	// 아이디, 비밀번호 찾기

	void updatePw(LoginDTO dto) throws Exception;


}
