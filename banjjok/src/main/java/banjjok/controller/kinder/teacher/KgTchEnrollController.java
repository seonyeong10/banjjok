package banjjok.controller.kinder.teacher;

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
import banjjok.service.kinder.teacher.TeacherIdService;

@Controller
@RequestMapping(value = "kinder/teacher")
public class KgTchEnrollController {
	@ModelAttribute
	TeacherCommand setTeacherCommand() {
		return new TeacherCommand();
	}
	@Autowired
	TeacherIdService teacherIdService;
	@Autowired
	TeacherEnrollService teacherEnrollService;
	
	@RequestMapping(value = "enroll", method = RequestMethod.GET)
	public String enroll(Model model) throws Exception {
		teacherIdService.getEmpNumber(model);
		return "kinder/teacher/tchForm";
	}
	@RequestMapping(value = "enrollAct", method = RequestMethod.POST)
	public String enrollAct(@Validated TeacherCommand teacherCommand, BindingResult result, HttpSession session, Model model) throws Exception {
		String path = teacherEnrollService.insertTeacher(teacherCommand, model, session);
		if(result.hasErrors()) {
			return "kinder/teacher/tchForm";
		}
		return "redirect:/kinder/teacher";
	}
}
