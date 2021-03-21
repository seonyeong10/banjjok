package banjjok.mapper;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import banjjok.domain.PetSitterDTO;
import banjjok.domain.RoomDTO;

@Repository
@Component
public interface RoomMapper {

	public Integer insertRoom(RoomDTO dto) throws Exception;

	public List<PetSitterDTO> getRoomList(RoomDTO dto) throws Exception;
}