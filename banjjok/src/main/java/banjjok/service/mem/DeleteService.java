package banjjok.service.mem;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import banjjok.mapper.MemberMapper;

@Service
public class DeleteService {
	@Autowired
	MemberMapper memberMapper;

	public void deleteMem(String memId) throws Exception {
		// 삭제하지 않고 사용여부를 4(탈퇴한 회원)로 변경
		memberMapper.deleteMem(memId);
	}
	
}
