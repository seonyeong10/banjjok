package banjjok.controller.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import banjjok.command.MemberCommand;
import banjjok.service.mem.ChkPassService;
import banjjok.service.mem.DeleteService;
import banjjok.service.mem.ModifyService;


@Controller
@RequestMapping("main")
public class MemberController {
	@Autowired
	ChkPassService chkPassService;
	@Autowired
	ModifyService modifyService;
	@Autowired
	DeleteService deleteService;
	
	@RequestMapping(value = "myPage", method = RequestMethod.GET)
	public String myPage() {
		return "member/memPage";
	}
	@RequestMapping(value = "modifyMem", method = RequestMethod.GET)
	public String modifyMem() {
		return "member/checkPw";
	}
	@RequestMapping(value = "goModify", method = RequestMethod.POST)
	public String goModify(@RequestParam(value = "memPw") String memPw, Model model, HttpSession session) throws Exception {
		String path = chkPassService.check(memPw, model, session);
		return path;
	}
	@RequestMapping(value = "modifyAct", method = RequestMethod.POST)
	public String modifyAct(MemberCommand memberCommand, Model model, HttpSession session) throws Exception {
		modifyService.updateMem(memberCommand);
		return "redirect:/main/myPage";
	}
	@RequestMapping(value = "delMember", method = RequestMethod.GET)
	public String delMember(@RequestParam(value = "memId") String memId, HttpSession session) throws Exception {
		deleteService.deleteMem(memId);
		session.invalidate();
		return "redirect:/";
	}
} 
