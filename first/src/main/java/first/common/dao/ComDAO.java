package first.common.dao;

import java.util.Map;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

@Repository("comDAO")
public interface ComDAO {

	int fileInsert(Map<String, Object> map) throws DataAccessException;
	void deleteFile(Map<String, Object> map) throws DataAccessException;
	
}
