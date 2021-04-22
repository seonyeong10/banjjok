package banjjok.service.salon.desn;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.mapper.DesnMapper;

@Service
public class DesnNumberService {
	@Autowired
	DesnMapper desnMapper;

	public void getEmpNumber(Model model) throws Exception {
		// 신규등록 디자이너 사번 생성
		Date dt = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyMM");
		String month = sdf.format(dt);
		String empNumber = "S" + month;
		String latelyNum = desnMapper.getDesnId();
		if (latelyNum != null) {
			String compare = latelyNum.substring(0, 5);
			if (compare.equals(empNumber)) {
				int num = Integer.parseInt(latelyNum.substring(6, 8)) + 1;
				int len = (int) (Math.log10(num) + 1);
				switch (len) {
				case 1:
					empNumber = empNumber + "00" + num;
					break;
				case 2:
					empNumber = empNumber + "0" + num;
					break;
				case 3:
					empNumber = empNumber + num;
					break;
				}
			} else {
				empNumber = empNumber + "001";
			}
		} else {
			empNumber += "001";
		}
		model.addAttribute("empNumber", empNumber);
	}

}
