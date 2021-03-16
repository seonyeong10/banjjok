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
	
	
	
	@RequestMapping(value = "teacherMypage", method = RequestMethod.GET)
	public String teacherMypage() throws Exception{
		return "/kinder/teacherMypage";
	}
}
