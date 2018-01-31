package first.bbs.service.impl;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import first.bbs.dao.BbsDAO;
import first.bbs.service.BbsService;
import first.common.dao.ComDAO;
import first.common.util.DownloadUtil;
import first.common.util.FileUtil;

@Service("bbsService")
public class BbsServiceImpl implements BbsService{
	Logger log = Logger.getLogger(this.getClass());
	
	@Value("#{upload['mob.uploadPath']}")
	private String uploadPath;
	
	@Value("#{upload['mob.path']}")
	private String uploadContext;
	
	@Resource(name="comDAO")
	private ComDAO comDAO;
	
	@Resource(name="bbsDAO")
	private BbsDAO bbsDAO;
	
	@Override
	public List<Map<String, Object>> selectBoardList(Map<String, Object> map) throws Exception {
		return bbsDAO.selectBoardList(map);
	}
	
//	@Override
//	public Map<String, Object> selectBoardList(Map<String, Object> map) throws Exception {
//	    return bbsDAO.selectBoardList(map);
//	} 

	@Override
	public void insertBoard(Map<String, Object> map, MultipartHttpServletRequest request) throws Exception {
		if(request.getFileNames().hasNext()){
			map.put("atchCnt", request.getFileMap().keySet().size());
		}
		int bbsNo = bbsDAO.getBbsSeq(map);
		
		map.put("BBS_NO", bbsNo);
		
		bbsDAO.insertBoard(map);
//		bbsDao.insertArticle(map);
		
		map.put("uploadPath", uploadPath);
		map.put("uploadContext", uploadContext);
		
		// 파일업로드
		if(request.getFileNames().hasNext()){
			Date d = new Date();
	        SimpleDateFormat ym 	= new SimpleDateFormat("yyyyMM");
	        String thisMonth = ym.format(d);

	        map.put("folderName", "BBS/"+thisMonth);
			System.out.println("map: " + map);
			Iterator<String> fileNames = request.getFileNames();
			int i = 0;
			while(fileNames.hasNext()){
				Calendar calendar = Calendar.getInstance();
	            java.util.Date date = calendar.getTime();
	            String today = (new SimpleDateFormat("yyyyMMddHHmmssSSS").format(date)) + (i++);
	            
	            map.put("fileName", today);
				HashMap<String, Object> fileMap = FileUtil.fileUpload(map, fileNames.next(), request);
				
				map.put("atch_id", fileMap.get("fileName"));
				map.put("file_path", fileMap.get("filePath"));
				map.put("file_nm", fileMap.get("originalFileName"));
				map.put("file_ext_nm", fileMap.get("ext"));
				map.put("file_size", fileMap.get("size"));
				comDAO.fileInsert(map);
				bbsDAO.bbsAtachInsert(map);
			}
		}
		
	}

	@Override
	public Map<String, Object> selectBoardDetail(Map<String, Object> map) throws Exception {
		bbsDAO.updateHitCnt(map);
		Map<String, Object> resultMap = bbsDAO.selectBoardDetail(map);
		return resultMap;
	}

	@Override
	public void download(Map<String, Object> map, HttpServletRequest request, HttpServletResponse response) throws Exception{
		Map<String, Object> attach = bbsDAO.getAttach(map);
		
		if(attach != null){
			String filePath = attach.get("FILE_PATH").toString().replace(uploadContext, uploadPath)+attach.get("ATCH_ID")+attach.get("FILE_EXT_NM");
			File file = new File(filePath);
			
			DownloadUtil.download(request, response, file, attach.get("FILE_NM").toString());
		}
	}
	
	@Override
	public void updateBoard(Map<String, Object> map, MultipartHttpServletRequest request) throws Exception{
		System.out.println("request: " + request);
		String[] atchIds = request.getParameterValues("atchIds");
		map.put("uploadPath", uploadPath);
		map.put("uploadContext", uploadContext);
		map.put("atchIds", atchIds);
		
		System.out.println("map: " + map);
		List<Map<String, Object>> deletedAttachList = bbsDAO.getDeletedAttachList(map);
		System.out.println("deletedAttachList: " + deletedAttachList);
		map.put("deletedAttachList", deletedAttachList);
		
		if(deletedAttachList.size() > 0){
			bbsDAO.deleteAttach(map);
		}
		
		for(int i=0;i<deletedAttachList.size();i++){
			String filePath = deletedAttachList.get(i).get("FILE_PATH").toString() + deletedAttachList.get(i).get("ATCH_ID") + deletedAttachList.get(i).get("FILE_EXT_NM");
			FileUtil.deleteFile(map, filePath);
		}
		
		// 파일업로드
		if(request.getFileNames().hasNext()){
			Date d = new Date();
	        SimpleDateFormat ym 	= new SimpleDateFormat("yyyyMM");
	        String thisMonth = ym.format(d);

	        map.put("folderName", "BBS/"+thisMonth);
			
			Iterator<String> fileNames = request.getFileNames();
			int i = 0;
			while(fileNames.hasNext()){
				Calendar calendar = Calendar.getInstance();
	            java.util.Date date = calendar.getTime();
	            String today = (new SimpleDateFormat("yyyyMMddHHmmssSSS").format(date)) + (i++);
	            
	            map.put("fileName", today);
				HashMap<String, Object> fileMap = FileUtil.fileUpload(map, fileNames.next(), request);
				
				map.put("atch_id", fileMap.get("fileName"));
				map.put("file_path", fileMap.get("filePath"));
				map.put("file_nm", fileMap.get("originalFileName"));
				map.put("file_ext_nm", fileMap.get("ext"));
				map.put("file_size", fileMap.get("size"));
				comDAO.fileInsert(map);
				bbsDAO.bbsAtachInsert(map);
			}
		}
		
		bbsDAO.updateBoard(map);
	}

	@Override
	public void deleteBoard(Map<String, Object> map) throws Exception {
		map.put("uploadPath", uploadPath);
		map.put("uploadContext", uploadContext);
		System.out.println("map: " + map);
		
		List<Map<String, Object>> deletedAttachList = bbsDAO.getDeletedAttachList(map);
		map.put("deletedAttachList", deletedAttachList);
		System.out.println("deletedAttachList: " + deletedAttachList);
		
		if(deletedAttachList.size() > 0){
			bbsDAO.deleteAttach(map);
		}
		
		for(int i=0;i<deletedAttachList.size();i++){
			String filePath = deletedAttachList.get(i).get("FILE_PATH").toString() + deletedAttachList.get(i).get("ATCH_ID") + deletedAttachList.get(i).get("FILE_EXT_NM");
			FileUtil.deleteFile(map, filePath);
		}
		
		bbsDAO.deleteBoard(map);
	}

	@Override
	public List<Map<String, Object>> cateList(Map<String, Object> map) throws Exception {
		return bbsDAO.cateList(map);
		
	}
	
	@Override
	public List<Map<String, Object>> getAttachList(Map<String, Object> map) {
		return bbsDAO.getAttachList(map);
	}
	
	@Override
	public Map<String, Object> selectPagingList(Map<String, Object> map){
	    PaginationInfo paginationInfo = null;
	     
	    if(map.containsKey("currentPageNo") == false || StringUtils.isEmpty(map.get("currentPageNo")) == true)
	        map.put("currentPageNo","1");
	     
	    paginationInfo = new PaginationInfo();
//	    System.out.println("currentPageNo: " + Integer.parseInt(map.get("currentPageNo").toString()));
	    paginationInfo.setCurrentPageNo(Integer.parseInt(map.get("currentPageNo").toString()));
	    if(map.containsKey("PAGE_ROW") == false || StringUtils.isEmpty(map.get("PAGE_ROW")) == true){
	        paginationInfo.setRecordCountPerPage(15);
	    }
	    else{
	        paginationInfo.setRecordCountPerPage(Integer.parseInt(map.get("PAGE_ROW").toString()));
	    }
	    paginationInfo.setPageSize(10);
	     
	    int start = paginationInfo.getFirstRecordIndex();
	    int end = start + paginationInfo.getRecordCountPerPage();
	    map.put("START",start+1);
	    map.put("END",end);
	     
	    Map<String,Object> returnMap = new HashMap<String,Object>();
//	    System.out.println("returnMap: " + returnMap);
	    List<Map<String, Object>> list;
		try {
//			System.out.println("map: " + map);
			list = bbsDAO.selectBoardList(map);
//			System.out.println("list222: " + list);
			if(list.size() == 0){
				map = new HashMap<String,Object>();
				map.put("TOTAL_COUNT",0); 
				list.add(map);
				
				if(paginationInfo != null){
					paginationInfo.setTotalRecordCount(0);
					returnMap.put("paginationInfo", paginationInfo);
				}
			}
			else{
				if(paginationInfo != null){
					paginationInfo.setTotalRecordCount(Integer.parseInt(list.get(0).get("TOTAL_COUNT").toString()));
					returnMap.put("paginationInfo", paginationInfo);
				}
			}
			System.out.println("list333: " + list);
			returnMap.put("result", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
	     
	    return returnMap;
	}
}
