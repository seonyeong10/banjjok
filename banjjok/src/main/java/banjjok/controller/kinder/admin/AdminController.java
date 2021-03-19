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
import org.springframework.web.bind.annotation.RequestParam;

import banjjok.command.ClassCommand;
import banjjok.command.TeacherCommand;
import banjjok.service.kinder.teacher.ClassDelService;
import banjjok.service.kinder.teacher.ClassDetailService;
import banjjok.service.kinder.teacher.ClassEnrollService;
import banjjok.service.kinder.teacher.ClassListService;
import banjjok.service.kinder.teacher.EnrollDetailService;
import banjjok.service.kinder.teacher.EnrollListService;
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
	EnrollListService enrollListService;
	@Autowired
	TeacherEnrollService teacherEnrollService;
	@Autowired
	EnrollDetailService enrollDetailService;
	
	
	@Autowired
	ClassEnrollService classEnrollService;
	@Autowired
	ClassListService classListService;
	@Autowired
	ClassDetailService classDetailService;
	@Autowired
	ClassDelService classDelService;
	
	@RequestMapping(value = "kinder", method = RequestMethod.GET)
	public String kinder() throws Exception {
		return "/kinder/kinderMain"; 
	}
	
	@RequestMapping(value = "administration", method = RequestMethod.GET)
	public String administraion() throws Exception{
		return "/kinder/administration";
	}
	
	
	// employee
	
	@RequestMapping(value = "enrollList", method = RequestMethod.GET)
	public String enrollList(Model model) throws Exception {
		enrollListService.enrollList(model);
		return "/kinder/enrollList";
	}
	
	@RequestMapping(value = "enrollment", method = RequestMethod.GET)
	public String erollment(TeacherCommand teacherCommand) throws Exception{
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
//			System.out.println(resultdata);
			// 사망연산자
			return resultdata < 0  ? "/kinder/enrollment" : "redirect:/enrollList" ;
			
//			if(resultdata > 0) {
//				return "redirect:/enrollList";
//			}else{
//				return "/kinder/enrollment";
//			}
			
//			System.out.println("t/f ? " + teacherCommand.gettState() == null);
//			System.out.println("상태 : " + teacherCommand.gettState());
//			if(teacherCommand.gettState() == null) {
//				return "/kinder/enrollment";
//			}
//			return "redirect:/enrollList";
	}
	
	@RequestMapping(value = "enrollDetail", method =RequestMethod.GET)
	public String enrollDetail(
			@RequestParam(value="tId")String tId,
			Model model) throws Exception{
		enrollDetailService.enrollDetail(tId, model);
		return "/kinder/enrollDetail";
	}
	
	
	
	// class
	
	@RequestMapping(value = "classList", method = RequestMethod.GET)
	public String kinderclass(Model model) throws Exception{
		classListService.classList(model);
		return "/kinder/classList";
	}
	
	@RequestMapping(value = "classDetail", method = RequestMethod.GET)
	public String classDetail(
			@RequestParam(value="cCode") String cCode,
			Model model) throws Exception {
		classDetailService.classDetail(cCode, model);
		return "/kinder/classDetail";
	}
	
	@RequestMapping(value = "classDel", method = RequestMethod.GET)
	public String classDel(
			@RequestParam(value="cCode") String cCode) throws Exception{
		classDelService.classDel(cCode);
		return "redirect:/classList";
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
		return resultdata < 0  ? "/kinder/enrollclass" : "redirect:/classList" ;
	}
	
	
	
}
