package banjjok.service.hotel.book;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import banjjok.domain.AuthInfo;

@Service
@Component
public class BookActService {

	public void bookAct(HttpSession session) {
		String userId = ((AuthInfo)session.getAttribute("authInfo")).getUserId();
		
	}

}
