package banjjok.contoller.salon.desn;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import banjjok.command.DesnCommand;
import banjjok.service.salon.DesnListService;
import banjjok.service.salon.ImgDelService;
import banjjok.service.salon.desn.DesnDelService;
import banjjok.service.salon.desn.DesnInfoService;
import banjjok.service.salon.desn.DesnModifyService;
import banjjok.service.salon.desn.DesnNumberService;
import banjjok.service.salon.desn.DesnRegistService;

@Controller
@RequestMapping(value = "salon", method = RequestMethod.GET)
public class DesignerController {
	@Autowired
	DesnNumberService desnNumberService;	// 사번 생성
	@Autowired
	DesnRegistService desnRegistService;
	@Autowired
	DesnInfoService desnInfoService;
	@Autowired
	DesnModifyService desnModifyService;
	@Autowired
	ImgDelService imgDelService;
	@Autowired
	DesnDelService desnDelService;
	@ModelAttribute
	public DesnCommand setDesnCommand() {
		return new DesnCommand();
	}
	
	@RequestMapping(value = "regist", method = RequestMethod.GET)
	public String desnRegist(Model model) throws Exception {
		desnNumberService.getEmpNumber(model);
		return "salon/designer/desnForm";
	}
	@RequestMapping(value = "empRegistAct", method = RequestMethod.POST)
	public String desnForm(@Validated DesnCommand desnCommand, BindingResult result, Model model, HttpSession session) throws Exception {
		if(result.hasErrors()) {
			return "salon/designer/desnForm";
		}
		String path = desnRegistService.registDesn(desnCommand, model, session);
//		if(cnt == null) return "salon/designer/desnForm";
		return path;
	}
	@RequestMapping(value = "preMyPage", method = RequestMethod.GET)  
	public String preMyPage() throws Exception {
		return "salon/preMyPage";
	}
	@RequestMapping(value = "myPage", method = RequestMethod.GET)  
	public String myPage(Model model, HttpSession session) throws Exception {
		desnInfoService.getInfo(model, session);
//		return "salon/myPage";
		return "salon/myPage2";
	}
	@RequestMapping(value = "desnModify", method = RequestMethod.POST)
	public String modifyForm(@Validated DesnCommand desnCommand, BindingResult result, Model model, HttpSession session) throws Exception {
		String location = desnModifyService.desnModify(desnCommand, model, session);
		return location;
	}
	@RequestMapping(value = "imgDel", method = RequestMethod.POST)
	public String imgDelete(@RequestParam(value = "imgFile") String imgFile, Model model, HttpSession session) {
		imgDelService.imgDel(imgFile, model, session);
		return "salon/imgDel";
	}
	@RequestMapping(value = "desnDel", method = RequestMethod.POST)
	public String desnDel(DesnCommand desnCommand, HttpSession session) throws Exception {
		String location = desnDelService.desnDelete(desnCommand, session);
		return location;
	}
}
