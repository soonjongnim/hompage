package first.bbs.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

@Repository("bbsDAO")
public interface BbsDAO {

	public List<Map<String, Object>> selectBoardList(Map<String, Object> map) throws Exception;
	
	public Map<String, Object> selectPagingList(Map<String, Object> map) throws Exception;
	
	int getBbsSeq(Map<String, Object> map) throws DataAccessException;
	
	public void insertBoard(Map<String, Object> map) throws Exception;

	public void updateHitCnt(Map<String, Object> map) throws Exception;

	public Map<String, Object> selectBoardDetail(Map<String, Object> map) throws Exception;

	public Map<String, Object> getAttach(Map<String, Object> map) throws DataAccessException;
	
	public void updateBoard(Map<String, Object> map) throws Exception;

	public List<Map<String, Object>> getDeletedAttachList(Map<String, Object> map) throws DataAccessException;
	
	public void deleteBoard(Map<String, Object> map) throws Exception;

	public List<Map<String, Object>> cateList(Map<String, Object> map) throws Exception;

	public void bbsAtachInsert(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> getAttachList(Map<String, Object> parameterMap) throws DataAccessException;
	
	public void deleteAttach(Map<String, Object> map) throws DataAccessException;
	
//	public void deleteBbsAttach(Map<String, Object> map) throws DataAccessException;
}
