package banjjok.controller.kinder.teacher;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import banjjok.service.kinder.teacher.TeacherListService;

@Controller
@RequestMapping(value = "/banjjok/kinder")
public class KgTchController {
	@Autowired
	TeacherListService teacherListService;
	
	@RequestMapping(value = "teacher", method = RequestMethod.GET)
	public String teacher(Model model) throws Exception {
		teacherListService.getList(model);
		return "kinder/teacher/tchList";
	}
	@RequestMapping(value = "teacher/myPage", method = RequestMethod.GET)
	public String myPage(Model model) throws Exception {
		teacherListService.getList(model);
		return "kinder/teacher/tchMyPage";
	}
}
