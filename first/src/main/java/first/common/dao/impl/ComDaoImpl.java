package first.common.dao.impl;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import first.common.dao.ComDAO;

@Repository("comDAO")
public class ComDaoImpl implements ComDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public int fileInsert(Map<String, Object> map) throws DataAccessException {
		return sqlSession.insert("com.fileInsert", map);
	}
	
	//파일 데이터 삭제
	@Override
	public void deleteFile(Map<String, Object> map) throws DataAccessException {
		sqlSession.delete("com.deleteFile", map);
	}
	
}
