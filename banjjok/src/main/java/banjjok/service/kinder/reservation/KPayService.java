package banjjok.service.kinder.reservation;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import banjjok.command.KPayCommand;
import banjjok.domain.AuthInfo;
import banjjok.domain.KBookDTO;
import banjjok.domain.KPayDTO;
import banjjok.mapper.KBookMapper;

@Service
public class KPayService {
	@Autowired
	KBookMapper kBookMapper;

	public void pay(KPayCommand kPayCommand, Model model, HttpSession session) throws Exception {
		String memId = (String) ((AuthInfo) session.getAttribute("authInfo")).getUserId();
		KPayDTO pay = new KPayDTO(kPayCommand.getbCode(), kPayCommand.getPayWay(), "P", 
				kPayCommand.getPayAmount(), null);
		KBookDTO book = new KBookDTO(kPayCommand.getbCode(), memId, kPayCommand.getbRequest());
		
		kBookMapper.pay(pay);
		kBookMapper.book(book);
	}

}
