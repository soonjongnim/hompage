package first.bbs.dao.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import first.bbs.dao.BbsDAO;

@Repository("bbsDAO")
public class BbsDAOImpl implements BbsDAO{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<Map<String, Object>> selectBoardList(Map<String, Object> map) throws Exception{
		return  sqlSession.selectList("bbs.selectBoardList", map);
	}

	@SuppressWarnings("unchecked")
	@Override
	public Map<String, Object> selectPagingList(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>) sqlSession.selectList("bbs.selectBoardList", map);
	}
 
	@Override
	public int getBbsSeq(Map<String, Object> map) throws DataAccessException {
		return sqlSession.selectOne("bbs.getBbsSeq", map);
	}
	
	@Override
	public void insertBoard(Map<String, Object> map) throws Exception{
		sqlSession.insert("bbs.insertBoard", map);
	}

	@Override
	public void updateHitCnt(Map<String, Object> map) throws Exception{
		sqlSession.update("bbs.updateHitCnt", map);
	}

	@Override
	public Map<String, Object> selectBoardDetail(Map<String, Object> map) throws Exception{
		System.out.println("map: " + map);
		return sqlSession.selectOne("bbs.selectBoardDetail", map);
	}

	@Override
	public Map<String, Object> getAttach(Map<String, Object> map) throws DataAccessException {
		return sqlSession.selectOne("bbs.getAttach", map);
	}
	
	@Override
	public void updateBoard(Map<String, Object> map) throws Exception{
		sqlSession.update("bbs.updateBoard", map);
	}

	@Override
	public void deleteBoard(Map<String, Object> map) throws Exception{
		sqlSession.update("bbs.deleteBoard", map);
	}

	@Override
	public List<Map<String, Object>> cateList(Map<String, Object> map) throws Exception{
		return sqlSession.selectList("bbs.cateList", map);
	}

	@Override
	public void bbsAtachInsert(Map<String, Object> map) throws Exception {
		sqlSession.insert("bbs.bbsAtachInsert", map);
	}

	@Override
	public List<Map<String, Object>> getAttachList(Map<String, Object> map) throws DataAccessException {
		return sqlSession.selectList("bbs.getAttachList", map);
	}
	
	@Override
	public List<Map<String, Object>> getDeletedAttachList(Map<String, Object> map) throws DataAccessException {
		return sqlSession.selectList("bbs.getDeletedAttachList", map);
	}
	
	@Override
	public void deleteAttach(Map<String, Object> map) throws DataAccessException {
		sqlSession.delete("bbs.deleteAttach", map);
	}
	
//	@Override
//	public void deleteBbsAttach(Map<String, Object> map) throws DataAccessException {
//		sqlSession.delete("bbs.deleteBbsAttach", map);
//	}
}
