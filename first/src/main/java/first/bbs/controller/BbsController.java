package first.bbs.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import first.bbs.service.BbsService;
import first.common.controller.CommandMap;

@Controller
public class BbsController {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="bbsService")
	private BbsService bbsService;
	
	@RequestMapping(value="/Template_general/openBoardList.do")
    public ModelAndView openBoardList(CommandMap commandMap) throws Exception{
    	ModelAndView mv = new ModelAndView("/bbs/boardList");
    	
//    	List<Map<String,Object>> list = bbsService.selectBoardList(commandMap.getMap());
    	Map<String,Object> resultMap = bbsService.selectPagingList(commandMap.getMap());
//        System.out.println("resultMap: " + resultMap);
        mv.addObject("paginationInfo", (PaginationInfo)resultMap.get("paginationInfo"));
        mv.addObject("list", resultMap.get("result")); 
//        mv.addObject("list", list); 
    	
    	return mv;
    }
	
	@RequestMapping(value="/Template_general/openBoardWrite.do")
	public ModelAndView openBoardWrite(CommandMap commandMap, HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView("/bbs/boardWrite");
		HttpSession userSession = request.getSession();
//		System.out.println("userSession: " + userSession.getAttribute("COMPANY_CD"));
//		commandMap.put("COMPANY_CD", userSession.getAttribute("COMPANY_CD"));
//		commandMap.put("BBS_ID", userSession.getAttribute("BBS_ID"));
		System.out.println("commandMap: " + commandMap.getMap());
		List<Map<String,Object>> cateList = bbsService.cateList(commandMap.getMap());
		mv.addObject("cateList", cateList);
		mv.addObject("commandMap", commandMap.getMap());
		return mv;
	}
	
	@RequestMapping(value="/Template_general/insertBoard.do")
	public ModelAndView insertBoard(@RequestParam Map<String, Object> map, MultipartHttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/Template_general/openBoardList.do");
		System.out.println("parameterMap: " + map);
		bbsService.insertBoard(map, request);
		
		return mv;
	}
	
	@RequestMapping(value="/Template_general/openBoardDetail.do")
	public ModelAndView openBoardDetail(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("/bbs/boardDetail");
		System.out.println("commandMap: " + commandMap.getMap());
		Map<String,Object> map = bbsService.selectBoardDetail(commandMap.getMap());
		List<Map<String, Object>> attachList = bbsService.getAttachList(commandMap.getMap());
		mv.addObject("map", map);
		mv.addObject("attachList", attachList);
		
		return mv;
	}
	
	@RequestMapping(value = "/download.do")
	public void download(@RequestParam Map<String, Object> map, Model model, HttpServletRequest request, HttpServletResponse response) {
		try{
			/*HttpSession userSession = request.getSession();
			parameterMap.put("companyCd", userSession.getAttribute("companyCd"));*/
			bbsService.download(map, request, response);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value="/Template_general/openBoardUpdate.do")
	public ModelAndView openBoardUpdate(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("/bbs/boardUpdate");
		List<Map<String,Object>> cateList = bbsService.cateList(commandMap.getMap());
		Map<String,Object> map = bbsService.selectBoardDetail(commandMap.getMap());
		List<Map<String, Object>> attachList = bbsService.getAttachList(commandMap.getMap());
		mv.addObject("cateList", cateList);
		mv.addObject("map", map);
		mv.addObject("attachList", attachList);
		
		return mv;
	}
	
	@RequestMapping(value="/Template_general/updateBoard.do")
	public ModelAndView updateBoard(@RequestParam Map<String, Object> map, MultipartHttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/Template_general/openBoardDetail.do");
		System.out.println("map: " + map);
		mv.addObject("COMPANY_CD", map.get("COMPANY_CD"));
		mv.addObject("BBS_ID", map.get("BBS_ID"));
		mv.addObject("BBS_NO", map.get("BBS_NO"));
		bbsService.updateBoard(map, request);
		
		return mv;
	}
	
	@RequestMapping(value="/Template_general/deleteBoard.do")
	public ModelAndView deleteBoard(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/Template_general/openBoardList.do");
		
		bbsService.deleteBoard(commandMap.getMap());
		
		return mv;
	}
}
