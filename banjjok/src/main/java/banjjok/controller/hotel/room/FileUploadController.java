package banjjok.controller.hotel.room;

import java.io.File;
import java.io.FileOutputStream;
import java.util.Iterator;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
@RequestMapping("hotel")
public class FileUploadController {
	@RequestMapping(value = "/ajaxUplaod", method=RequestMethod.GET)
	public void ajaxUpload() {}
	
	@RequestMapping(value="MultiUpload", method=RequestMethod.GET)
	public String MultifileUp(MultipartHttpServletRequest multi2) {
		//저장 경로 설정
		String path = "/WEB-INF/view/hotel/room/upload";
		String fileName=""; //업로드 되는 파일명
		
		File dir = new File(path);
		if(!dir.isDirectory()) {
			dir.mkdir();
		}
		
		Iterator<String> files = multi2.getFileNames();
		MultipartFile mpf = multi2.getFile(files.next());
		
		if(mpf == null || mpf.getSize() <= 0) {
			System.out.println("파일용량x");
			return "ajaxUpload";
		}
		
		List<MultipartFile> fileList = multi2.getFiles("file");
		for(MultipartFile filePart : fileList) {
			fileName = filePart.getOriginalFilename(); //원본 파일 명
			System.out.println("실제 파일 이름 : " + fileName);
			long fileSize = filePart.getSize(); //파일 사이즈
			
			if(!fileName.equals("")) {
				// 파일 쓰기
				FileOutputStream fs;
				try {
					fs = new FileOutputStream(path + fileName);
					fs.write(filePart.getBytes());
					fs.close();
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
		}
		return "ajaxUpload";
	}
}
