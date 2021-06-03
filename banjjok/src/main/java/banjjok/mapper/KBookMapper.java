package banjjok.mapper;

import banjjok.domain.KBookDTO;
import banjjok.domain.KPayDTO;

public interface KBookMapper {

	String getBCode() throws Exception;
	void insertList(KBookDTO dto) throws Exception;
	void pay(KPayDTO pay) throws Exception;
	void book(KBookDTO book) throws Exception;
	
}
