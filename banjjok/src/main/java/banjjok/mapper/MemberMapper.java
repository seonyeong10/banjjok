package banjjok.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import banjjok.domain.MemberDTO;

@Repository
public interface MemberMapper {

	public Integer insertMem(MemberDTO dto) throws Exception;
	public List<MemberDTO> getUserList(MemberDTO dto) throws Exception;
	
}
