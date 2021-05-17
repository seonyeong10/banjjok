package banjjok.service;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpSession;

public class FileDeleleter {
	public void fileDel(HttpSession session, String path) {
		List<String> list = (List<String>) session.getAttribute("imgList");
		String filePath = session.getServletContext().getRealPath(path);
		if (list != null) {
			for (int i = 0; i < list.size(); i++) {
				String img = list.get(i);
				File file = new File(filePath + "/" + img);
				if (file.exists()) {
					file.delete();
				}
				session.removeAttribute("imgList");
			}
		}
	}
}
