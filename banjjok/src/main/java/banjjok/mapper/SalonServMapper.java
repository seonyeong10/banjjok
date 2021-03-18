package banjjok.mapper;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import banjjok.domain.SalonServDTO;

@Component
@Repository
public interface SalonServMapper {
	public String getCode() throws Exception;
	public Integer insertMenu(SalonServDTO dto) throws Exception;
	public List<SalonServDTO> getServiceList(String serviceCode) throws Exception;
	public Integer modifyMenu(SalonServDTO dto) throws Exception;
	public Integer delete(String serviceCode) throws Exception;

}
