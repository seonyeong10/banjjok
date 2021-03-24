package banjjok.service.kinder.teacher;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;


@Service
@Component
public class ImageDelService {

	public void imgDel(String imagefile, Model model, HttpSession session) {
		session.setAttribute("imgList", imagefile);
		model.addAttribute("val", 1);
	}
	
}
