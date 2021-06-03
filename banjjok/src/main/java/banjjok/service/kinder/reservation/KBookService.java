package banjjok.service.kinder.reservation;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.command.KBookCommand;
import banjjok.domain.KBookDTO;
import banjjok.mapper.KBookMapper;

@Service
public class KBookService {
	@Autowired
	KBookMapper kBookMapper;

	public void booking(KBookCommand kBookCommand, Model model) throws Exception {
		String bCode = getCode();
		kBookCommand.setbCode(bCode);
		if(kBookCommand.getMonth().length() < 2) {
			kBookCommand.setMonth("0" + kBookCommand.getMonth());
		}
		if(kBookCommand.getDate().length() < 2) {
			kBookCommand.setDate("0" + kBookCommand.getDate());
		}
		String bLDate = kBookCommand.getYear() + "-" + kBookCommand.getMonth() + "-" + kBookCommand.getDate();
		kBookCommand.setbLDate(bLDate);
		
		KBookDTO dto = new KBookDTO(bCode, bLDate, kBookCommand.getbLTime(), kBookCommand.getpCode(),
				kBookCommand.getbLTester());
		model.addAttribute("info", kBookCommand);
		kBookMapper.insertList(dto);
	}
	
	public String getCode() throws Exception {
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		String code = kBookMapper.getBCode();
		
		if(code == null) {
			code = "K" + sdf.format(date) + "0001";
			return code;
		}
		
		String curDate = sdf.format(date);
		String maxCode = code.substring(1,9);
		if(curDate != maxCode) {
			code = "K" + sdf.format(date) + "0001";
		} else {
			int number = Integer.parseInt(code.substring(10)) + 1;
			if(number < 10) {
				code = code.substring(0,10) + "000" + number;
			} else if(number < 100) {
				code = code.substring(0,10) + "00" + number;
			} else if(number < 1000) {
				code = code.substring(0,10) + "0" + number;
			} else if(number < 10000) {
				code = code.substring(0,10) + number;
			}
		}
		return code;
	}

}
