package first.common.controller;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import first.common.service.ComServiceImpl;


@Controller
public class ComController {

	@Resource(name="comService")
	private ComServiceImpl comService;
	
	@RequestMapping(value="/com/imageUpload.do")
	@ResponseBody
	public JSONObject imageUpload(@RequestParam HashMap<String, Object> parameterMap, Model model, MultipartHttpServletRequest request){
		JSONObject jsonObject = new JSONObject();
		String msg = "";
		try {
//			HttpSession userSession = request.getSession();
//			parameterMap.put("companyCd", userSession.getAttribute("companyCd"));

			comService.imageUpload(parameterMap, request);
		} catch (Exception e) {
			e.printStackTrace();
			msg = "업로드 실패!";
		}
		jsonObject.put("msg", msg);
		jsonObject.putAll(parameterMap);
		return jsonObject;
	}
	
	 
}
