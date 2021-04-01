package banjjok.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import banjjok.domain.MemSalReserveDTO;
import banjjok.domain.SalonPayDTO;
import banjjok.domain.SalonReserveDTO;

@Repository
public interface SalonReserveMapper {
	public Integer insertRes(SalonReserveDTO dto) throws Exception;
	public String getCode() throws Exception;
	public Integer insertResList(SalonReserveDTO reserveDTO) throws Exception;
	public Integer insertPay(SalonPayDTO payDTO) throws Exception;
	public List<MemSalReserveDTO> getList(MemSalReserveDTO memDTO) throws Exception;
	public Integer updateRes(SalonReserveDTO reserveDTO) throws Exception;
	public Integer updateRes2(SalonReserveDTO reserveDTO) throws Exception;
	public Integer cancle(SalonReserveDTO dto) throws Exception;
	public Integer updateStatus(SalonReserveDTO dto) throws Exception;
	
	public Integer isReserve(MemSalReserveDTO dto) throws Exception;
	public void canclePay(SalonReserveDTO reserveDTO) throws Exception;	// 결제 취소
}
