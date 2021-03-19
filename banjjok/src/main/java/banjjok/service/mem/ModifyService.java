package banjjok.service.mem;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import banjjok.command.MemberCommand;
import banjjok.domain.MemberDTO;
import banjjok.mapper.MemberMapper;

@Service
public class ModifyService {
	@Autowired
	MemberMapper memberMapper;

	public void updateMem(MemberCommand memberCommand) throws Exception {
		MemberDTO dto = new MemberDTO();
		dto.setMemEmail(memberCommand.getMemEmail());
		dto.setMemName(memberCommand.getMemName());
		dto.setNicName(memberCommand.getNicName());
		dto.setMemId(memberCommand.getMemId());
		memberMapper.updateMem(dto);
	}

}
