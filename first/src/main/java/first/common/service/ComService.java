package first.common.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface ComService {
	
	public void imageUpload(HashMap<String, Object> parameterMap, MultipartHttpServletRequest request) throws Exception;

	public void getFileInsert(HashMap<String, Object> parameterMap) throws Exception;
	//파일 데이터 삭제
	public void deleteFile(HashMap<String, Object> parameterMap) throws Exception;
	
}
