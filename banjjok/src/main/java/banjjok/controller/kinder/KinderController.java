package banjjok.controller.kinder;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import banjjok.command.TeacherCommand;
import banjjok.service.kinder.teacher.TeacherEnrollService;

@Controller
public class KinderController {
	
	@Autowired
	TeacherEnrollService teacherEnrollService;
	
	@ModelAttribute
	TeacherCommand setTeacherCommand() {
		return new TeacherCommand();
	}
	
	@RequestMapping(value = "kinder", method = RequestMethod.GET)
	public String kinder() throws Exception {
		return "/kinder/kinderMain"; 
	}
	
	@RequestMapping(value = "enrollment", method = RequestMethod.GET)
	public String erollment() throws Exception{
		return "/kinder/enrollment";
	}
	
	@RequestMapping(value = "enrollmentOk", method = RequestMethod.POST)
	public String enrollmentOk(
			@Validated TeacherCommand teacherCommand, BindingResult result, Model model, HttpSession session) throws Exception{
			Integer resultdata = teacherEnrollService.insertTeacher(teacherCommand, model, session);
			if (result.hasErrors()) {
				return "/kinder/enrollment";
			}
		return "/kinder/enrollmentOk";
	}
	
	@RequestMapping(value = "teacherMypage", method = RequestMethod.GET)
	public String teacherMypage() throws Exception{
		return "/kinder/teacherMypage";
	}
}
