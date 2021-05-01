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
import banjjok.command.ProgramCommand;
import banjjok.command.TeacherCommand;
import banjjok.service.kinder.teacher.ClassDelService;
import banjjok.service.kinder.teacher.ClassDetailService;
import banjjok.service.kinder.teacher.ClassEnrollService;
import banjjok.service.kinder.teacher.ClassListService;
import banjjok.service.kinder.teacher.EnrollDelService;
import banjjok.service.kinder.teacher.EnrollDetailService;
import banjjok.service.kinder.teacher.EnrollListService;
import banjjok.service.kinder.teacher.EnrollModifyOkService;
import banjjok.service.kinder.teacher.EnrollModifyService;
import banjjok.service.kinder.teacher.ImageDelService;
import banjjok.service.kinder.teacher.ProgramDetailService;
import banjjok.service.kinder.teacher.ProgramErollService;
import banjjok.service.kinder.teacher.ProgramListService;
import banjjok.service.kinder.teacher.ProgramModifyOkService;
import banjjok.service.kinder.teacher.ProgramModifyService;
import banjjok.service.kinder.teacher.TeacherEnrollService;

@Controller 
@RequestMapping(value="kinder")
public class AdminController {
	
	@ModelAttribute
	TeacherCommand setTeacherCommand() {
		return new TeacherCommand();
	}	
	@ModelAttribute
	ClassCommand setClassCommand() {
		return new ClassCommand();
	}
	@ModelAttribute
	ProgramCommand setProgramCommand() {
		return new ProgramCommand();
	}
	
	@Autowired
	EnrollListService enrollListService;
	@Autowired
	TeacherEnrollService teacherEnrollService;
	@Autowired
	EnrollDetailService enrollDetailService;
	@Autowired
	EnrollModifyService enrollModifyService;
	@Autowired
	ImageDelService imageDelService;
	@Autowired
	EnrollModifyOkService enrollModifyOkService;
	@Autowired
	EnrollDelService enrollDelService;
	
	
	@Autowired
	ClassEnrollService classEnrollService;
	@Autowired
	ClassListService classListService;
	@Autowired
	ClassDetailService classDetailService;
	@Autowired
	ClassDelService classDelService;
	
	
	@Autowired
	ProgramErollService programErollService;
	@Autowired
	ProgramListService programListService;
	@Autowired
	ProgramDetailService programDetailService;
	@Autowired
	ProgramModifyService programModifyService;
	@Autowired
	ProgramModifyOkService programModifyOkService;
	
	
	@RequestMapping(value = "administration", method = RequestMethod.GET)
	public String administraion() throws Exception{
		return "kinder/admin/administration";
	}
	
	@RequestMapping(value = "teacherMypage", method = RequestMethod.GET)
	public String teacherMypage() throws Exception{
		return "/kinder/teacherMypage";
	}
	
	
	// employee
	
	@RequestMapping(value = "enrollList", method = RequestMethod.GET)
	public String enrollList(Model model) throws Exception {
		enrollListService.enrollList(model);
		return "kinder/admin/enrollList";
	}
	
	@RequestMapping(value = "enrollment", method = RequestMethod.GET)
	public String erollment(TeacherCommand teacherCommand) throws Exception{
		return "kinder/admin/enrollment";
	}
	
	@RequestMapping(value = "enrollmentOk", method = RequestMethod.POST)
	public String enrollmentOk(
			@Validated TeacherCommand teacherCommand, BindingResult result, 
				Model model, HttpSession session) throws Exception{
//			Integer resultdata = teacherEnrollService.insertTeacher(teacherCommand, model, session);
			if (result.hasErrors()) {
				return "kinder/admin/enrollment";
			}
//			System.out.println(resultdata);
			// 사망연산자
//			return resultdata < 0  ? "kinder/admin/enrollment" : "redirect:/kinder/enrollList" ;
			
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
			return "redirect:/enrollList";
	}
	
	@RequestMapping(value = "enrollDetail", method =RequestMethod.GET)
	public String enrollDetail(
			@RequestParam(value="tId")String tId,
			Model model) throws Exception{
		enrollDetailService.enrollDetail(tId, model);
		return "kinder/admin/enrollDetail";
	}
	
	@RequestMapping(value="enrollModify", method =RequestMethod.GET)
	public String enrollModify(TeacherCommand teacherCommand, Model model) throws Exception {
		enrollModifyService.enrollModify(teacherCommand, model);
		return "kinder/admin/enrollModify";
	}
	
	@RequestMapping(value="imageDel", method=RequestMethod.POST)
	public String imageDel(@RequestParam(value="imagefile")String imagefile, Model model,
			HttpSession session){
		imageDelService.imgDel(imagefile, model, session);
		return "kinder/admin/imageDel";
	}
	
	@RequestMapping(value="enrollModifyOk", method=RequestMethod.POST)
	public String enrollModifyOk(
			TeacherCommand teacherCommand, HttpSession session) throws Exception{
		enrollModifyOkService.enrollModifyOk(teacherCommand, session);
		/*if (result.hasErrors()) {
			return "kinder/admin/enrollModify";
		}*/
		return "redirect:/kinder/enrollDetail?tId="+teacherCommand.gettId();
	}
	
	@RequestMapping(value="enrollDel", method =RequestMethod.GET)
	public String enrollDel(
			@RequestParam(value="tId")String tId) throws Exception{
		enrollDelService.enrollDel(tId);
		return "redirect:/kinder/enrollList";
	}
	
	
	
	// class
	
	@RequestMapping(value = "classList", method = RequestMethod.GET)
	public String kinderclass(Model model) throws Exception{
		classListService.classList(model);
		return "kinder/admin/classList";
	}
	
	@RequestMapping(value = "classDetail", method = RequestMethod.GET)
	public String classDetail(
			@RequestParam(value="cCode") String cCode,
			Model model) throws Exception {
		classDetailService.classDetail(cCode, model);
		return "kinder/admin/classDetail";
	}
	
	@RequestMapping(value = "classDel", method = RequestMethod.GET)
	public String classDel(
			@RequestParam(value="cCode") String cCode) throws Exception{
		classDelService.classDel(cCode);
		return "redirect:/kinder/classList";
	}
	
	@RequestMapping(value = "enrollclass", method = RequestMethod.GET)
	public String enrollclass() throws Exception{
		return "kinder/admin/enrollclass";
	}
	
	@RequestMapping(value = "enrollclassOk", method = RequestMethod.POST)
	public String enrollclassOk(
			@Validated ClassCommand classCommand, BindingResult result,
				Model model, HttpSession session) throws Exception{
		Integer resultdata = classEnrollService.insertClass(classCommand, result, model, session);
		if(result.hasErrors()) {
			return "kinder/admin/enrollclass";
		}
		return resultdata < 0  ? "kinder/admin/enrollclass" : "redirect:/kinder/classList" ;
	}
	
	
	
	// program
	
	@RequestMapping(value = "programList", method = RequestMethod.GET)
	public String programList(Model model) throws Exception {
		programListService.programList(model);
		return "kinder/admin/programList";
	}
	
	@RequestMapping(value = "programEnroll", method = RequestMethod.GET)
	public String programEnroll(ProgramCommand programCommand) {
		return "kinder/admin/programEnroll";
	}
	
	@RequestMapping(value="programErollOk", method=RequestMethod.POST)
	public String programErollOk(@Validated ProgramCommand programCommand, BindingResult result,
	HttpSession session) throws Exception{
		programErollService.programEroll(programCommand, session);
		if(result.hasErrors()) {
			return "kinder/admin/programEnroll";
		}
		return "redirect:/kinder/programList";
	}
	
	@RequestMapping(value="programDetail", method = RequestMethod.GET)
	public String programDetail(
			@RequestParam(value="pCode") String pCode, Model model) throws Exception {
		programDetailService.programDetail(pCode, model);
		return "kinder/admin/programDetail";
	}
	
	@RequestMapping(value="programModify", method = RequestMethod.GET)
	public String programModify(ProgramCommand programCommand, Model model) throws Exception {
		programModifyService.programModify(programCommand, model);
		return "kinder/admin/programModify";
	}
	
	@RequestMapping(value="programModifyOk", method=RequestMethod.POST)
	public String programModifyOk(@Validated ProgramCommand programCommand, BindingResult result,
			HttpSession session) throws Exception {
		programModifyOkService.programModifyOk(programCommand, session);
		if(result.hasErrors()) {
			return "kinder/admin/programModify";
		}
		return "redirect:/kinder/programDetail?pCode="+programCommand.getpCode();
	}
	
	
}
