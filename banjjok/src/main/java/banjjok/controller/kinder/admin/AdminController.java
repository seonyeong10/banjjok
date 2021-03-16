package banjjok.controller.kinder.admin;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import banjjok.command.ClassCommand;
import banjjok.command.TeacherCommand;
import banjjok.service.kinder.teacher.ClassEnrollService;
import banjjok.service.kinder.teacher.ClassListService;
import banjjok.service.kinder.teacher.TeacherEnrollService;

@Controller
public class AdminController {
	
	@ModelAttribute
	TeacherCommand setTeacherCommand() {
		return new TeacherCommand();
	}	
	
	@ModelAttribute
	ClassCommand setClassCommand() {
		return new ClassCommand();
	}
	
	@Autowired
	TeacherEnrollService teacherEnrollService;
	@Autowired
	ClassEnrollService classEnrollService;
	@Autowired
	ClassListService classListService;

	
	
	@RequestMapping(value = "kinder", method = RequestMethod.GET)
	public String kinder() throws Exception {
		return "/kinder/kinderMain"; 
	}
	
	@RequestMapping(value = "administraion", method = RequestMethod.GET)
	public String administraion() throws Exception{
		return "/kinder/administraion";
	}
	
	@RequestMapping(value = "enrollment", method = RequestMethod.GET)
	public String erollment() throws Exception{
		return "/kinder/enrollment";
	}
	
	@RequestMapping(value = "enrollmentOk", method = RequestMethod.POST)
	public String enrollmentOk(
			@Validated TeacherCommand teacherCommand, BindingResult result, 
				Model model, HttpSession session) throws Exception{
			Integer resultdata = teacherEnrollService.insertTeacher(teacherCommand, model, session);
			if (result.hasErrors()) {
				return "/kinder/enrollment";
			}
			// 이거 리스트 페이지 만들어야 함 ㅋ
		return "/kinder/enrollmentOk";
	}
	
	@RequestMapping(value = "classList", method = RequestMethod.GET)
	public String kinderclass(Model model) throws Exception{
		classListService.classList(model);
		return "/kinder/classList";
	}
	
	@RequestMapping(value = "classDetail/{code}", method = RequestMethod.GET)
	public String classDetail(@PathVariable(value = "code") String code, Model model) throws Exception {
		classListService.classList(model);
		return "/kinder/classDetail";
	}
	
	@RequestMapping(value = "enrollclass", method = RequestMethod.GET)
	public String enrollclass() throws Exception{
		return "/kinder/enrollclass";
	}
	
	@RequestMapping(value = "enrollclassOk", method = RequestMethod.POST)
	public String enrollclassOk(
			@Validated ClassCommand classCommand, BindingResult result,
				Model model, HttpSession session) throws Exception{
		Integer resultdata = classEnrollService.insertClass(classCommand, result, model, session);
		if(result.hasErrors()) {
			return "/kinder/enrollclass";
		}
		return "/kinder/classList";
	}
	
}
