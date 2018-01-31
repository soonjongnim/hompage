package first.common.service;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import first.common.dao.ComDAO;
import first.common.util.FileUtil;

@Service("comService")
public class ComServiceImpl {
	
	@Value("#{upload['mob.uploadPath']}")
	private String uploadPath;
	@Value("#{upload['mob.path']}")
	private String uploadContext;
	
	@Resource(name="comDAO")
	private ComDAO comDAO;

	public void imageUpload(HashMap<String, Object> parameterMap, MultipartHttpServletRequest request) throws Exception{
		if(parameterMap.get("base64Image") != null){
			MultipartFile mFile = FileUtil.base64ToImage(parameterMap.get("base64Image").toString(), parameterMap.get("fileType").toString());
			request.getMultiFileMap().add("base64Image", mFile);
		}
		
		if(request.getFileNames().hasNext()){
			Calendar calendar = Calendar.getInstance();
            Date date = calendar.getTime();
            String today = (new SimpleDateFormat("yyyyMMddHHmmssSSS").format(date)) + "0";
            String month = (new SimpleDateFormat("yyyyMM").format(date));
            
			parameterMap.put("uploadPath", uploadPath);
			parameterMap.put("uploadContext", uploadContext);
			parameterMap.put("folderName", parameterMap.get("folderName")+"/"+month);
			
			Iterator<String> fileNames = request.getFileNames();
			while(fileNames.hasNext()){
				parameterMap.put("fileName", today);
				parameterMap.put("imageType", "BBS");
				HashMap<String, Object> fileMap = FileUtil.imageUpload(parameterMap, fileNames.next(), request);
				parameterMap.put("imagePath", fileMap.get("filePath").toString()+fileMap.get("fileName").toString()+fileMap.get("ext").toString());
			}
		}
	}

	public void getFileInsert(HashMap<String, Object> parameterMap) throws Exception	{
		comDAO.fileInsert(parameterMap);
	}
	//파일 데이터 삭제
	public void deleteFile(HashMap<String, Object> parameterMap) throws Exception {
		comDAO.deleteFile(parameterMap);
	}
	
}
