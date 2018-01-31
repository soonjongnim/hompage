package first.bbs.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface BbsService {

	List<Map<String, Object>> selectBoardList(Map<String, Object> map) throws Exception;
	
	Map<String, Object> selectPagingList(Map<String, Object> map) throws Exception;
	
	void insertBoard(Map<String, Object> map, MultipartHttpServletRequest request) throws Exception;

	Map<String, Object> selectBoardDetail(Map<String, Object> map) throws Exception;

	void download(Map<String, Object> map, HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	void updateBoard(Map<String, Object> map, MultipartHttpServletRequest request) throws Exception;

	void deleteBoard(Map<String, Object> map) throws Exception;

	List<Map<String, Object>> cateList(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> getAttachList(Map<String, Object> map) throws Exception;
}
