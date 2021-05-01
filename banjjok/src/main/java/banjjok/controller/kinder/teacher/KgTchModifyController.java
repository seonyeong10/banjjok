package banjjok.controller.kinder.teacher;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import banjjok.command.TeacherCommand;
import banjjok.service.kinder.teacher.EnrollModifyOkService;
import banjjok.service.kinder.teacher.EnrollModifyService;
import banjjok.service.salon.ImgDelService;

@Controller
@RequestMapping(value = "kinder/teacher/myPage")
public class KgTchModifyController {
	@Autowired
	EnrollModifyService enrollModifyService;
	@Autowired
	ImgDelService imgDelService;
	@Autowired
	EnrollModifyOkService enrollModifyOkService;
	
	@RequestMapping(value = "modify", method = RequestMethod.GET)
	public String openForm(HttpSession session, Model model) throws Exception {
		enrollModifyService.getTch(session, model);
		return "kinder/teacher/tchModify";
	}
	
	@RequestMapping(value = "imgDel", method = RequestMethod.POST)
	public String imgDel(@RequestParam(value = "imgFile") String imgFile, Model model, HttpSession session) {
		imgDelService.imgDel(imgFile, model, session);
		return "salon/imgDel";
	}
	
	@RequestMapping(value = "modifyAct", method = RequestMethod.POST)
	public String modifyAct(TeacherCommand teacherCommand, HttpSession session) throws Exception {
		enrollModifyOkService.enrollModifyOk(teacherCommand, session);
		return "redirect:/kinder/teacher/myPage/modify";
	}
}
