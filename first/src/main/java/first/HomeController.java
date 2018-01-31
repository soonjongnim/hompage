package first;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	Logger log = Logger.getLogger(this.getClass());
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/home.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "/home";
	}
	
	@RequestMapping(value = "/Template_cafe.do", method = RequestMethod.GET)
	public String Template_cafe(Locale locale, Model model) {
		return "/Template_cafe/home";
	}


	@RequestMapping(value = "/Template_company.do", method = RequestMethod.GET)
	public String Template_company(Locale locale, Model model) {
		return "/Template_company/home";
	}

	/* ---------------------------------------------------- �몴以��삎 -------------------------------- */
	@RequestMapping(value = "/Template_general.do", method = RequestMethod.GET)
	public String Template_general(Locale locale, Model model) {
		return "/Template_general/home";
	}	
	
	@RequestMapping(value = "/Template_general/about.do", method = RequestMethod.GET)
	public String Template_general_about(Locale locale, Model model) {
		return "/Template_general/about";
	}

	@RequestMapping(value = "/Template_general/product.do", method = RequestMethod.GET)
	public String Template_general_product(Locale locale, Model model) {
		return "/Template_general/product";
	}
	@RequestMapping(value = "/Template_general/sns.do", method = RequestMethod.GET)
	public String Template_general_sns(Locale locale, Model model) {
		return "/Template_general/sns";
	}	
	@RequestMapping(value = "/Template_general/business.do", method = RequestMethod.GET)
	public String Template_general_business(Locale locale, Model model) {
		return "/Template_general/business";
	}
	@RequestMapping(value = "/Template_general/service.do", method = RequestMethod.GET)
	public String Template_general_service(Locale locale, Model model) {
		return "/Template_general/service";
	}
	@RequestMapping(value = "/Template_general/staff.do", method = RequestMethod.GET)
	public String Template_general_staff(Locale locale, Model model) {
		return "/Template_general/staff";
	}	
	@RequestMapping(value = "/Template_general/recruit.do", method = RequestMethod.GET)
	public String Template_general_recruit(Locale locale, Model model) {
		return "/Template_general/recruit";
	}
	@RequestMapping(value = "/Template_general/contact.do", method = RequestMethod.GET)
	public String Template_general_contact(Locale locale, Model model) {
		return "/Template_general/contact";
	}	
	@RequestMapping(value = "/Template_general/customer.do", method = RequestMethod.GET)
	public String Template_general_customer(Locale locale, Model model) {
		return "/Template_general/customer";
	}	
	@RequestMapping(value = "/Template_general/bbs.do", method = RequestMethod.GET)
	public String Template_general_bbs(Locale locale, Model model) {
		return "/Template_general/bbs";
	}	
	@RequestMapping(value = "/Template_general/bbsDetal.do", method = RequestMethod.GET)
	public String Template_general_bbsDetal(Locale locale, Model model) {
		return "/Template_general/bbs_detail";
	}	
	@RequestMapping(value = "/Template_general/angul.do", method = RequestMethod.GET)
	public String Template_general_angul(Locale locale, Model model) {
		return "/Template_general/angul";
	}	
	
	@RequestMapping(value = "/Template_general/angulr.do", headers="Accept=application/json", method = RequestMethod.GET)
	@ResponseBody
	public Map Template_general_angulr(Locale locale, Model model) {
		/* TEST DATA 생성 */
		List list = new ArrayList();

		Map map1 = new HashMap();
		map1.put("ITEM", "blouse");
		map1.put("PRICE","1500000000");
		map1.put("LINK", "blouse@naver.com");

		Map map2 = new HashMap();
		map2.put("ITEM", "Tshirt");
		map2.put("PRICE","1000000000");
		map2.put("LINK", "Tshirt@naver.com");

		Map map3 = new HashMap();
		map3.put("ITEM", "Jeans");
		map3.put("PRICE","2500000000");
		map3.put("LINK", "Jeans@naver.com");

		list.add(0, map1);
		list.add(1, map2);
		list.add(2, map3);

		Map result = new HashMap();
		result.put("items", list);
		System.out.println("result: " + result);
		return result;
	}	
	/* ---------------------------------------------------- 鍮꾩쫰�땲�뒪�삎 -------------------------------- */
	
	@RequestMapping(value = "/Template_company2.do", method = RequestMethod.GET)
	public String Template_company2(Locale locale, Model model) {
		return "/Template_company2/home";
	}
	

	@RequestMapping(value = "/Template_company2/intro.do", method = RequestMethod.GET)
	public String intro(Locale locale, Model model) {
		System.out.println("吏꾩엯");
		return "/Template_company2/intro";
	}
	@RequestMapping(value = "/Template_company2/intro2.do", method = RequestMethod.GET)
	public String intro2(Locale locale, Model model) {
		System.out.println("吏꾩엯");
		return "/Template_company2/intro2";
	}
	@RequestMapping(value = "/Template_company2/home.do", method = RequestMethod.GET)
	public String mypage(Locale locale, Model model) {
		System.out.println("吏꾩엯");
		return "/Template_company2/home";
	}
	@RequestMapping(value = "/Template_company2/ceo.do", method = RequestMethod.GET)
	public String ceo(Locale locale, Model model) {
		System.out.println("吏꾩엯");
		return "/Template_company2/ceo";
	}
	@RequestMapping(value = "/Template_company2/milestone.do", method = RequestMethod.GET)
	public String milestone(Locale locale, Model model) {
		System.out.println("吏꾩엯");
		return "/Template_company2/milestone";
	}
	@RequestMapping(value = "/Template_company2/ciui.do", method = RequestMethod.GET)
	public String ciui(Locale locale, Model model) {
		System.out.println("吏꾩엯");
		return "/Template_company2/ciui";
	}
		@RequestMapping(value = "/Template_company2/finance.do", method = RequestMethod.GET)
	public String finance(Locale locale, Model model) {
		System.out.println("吏꾩엯");
		return "/Template_company2/finance";
	}

	@RequestMapping(value = "/Template_company2/business.do", method = RequestMethod.GET)
	public String business(Locale locale, Model model) {
		System.out.println("吏꾩엯");
		return "Template_company2/business";
	}
	@RequestMapping(value = "/Template_company2/business2.do", method = RequestMethod.GET)
	public String business2(Locale locale, Model model) {
		System.out.println("吏꾩엯");
		return "/Template_company2/business2";
	}
	@RequestMapping(value = "/Template_company2/business3.do", method = RequestMethod.GET)
	public String business3(Locale locale, Model model) {
		System.out.println("吏꾩엯");
		return "/Template_company2/business3";
	}
	@RequestMapping(value = "/Template_company2/product.do", method = RequestMethod.GET)
	public String product(Locale locale, Model model) {
				System.out.println("吏꾩엯");
		
		return "/Template_company2/product";
	}
	@RequestMapping(value = "/Template_company2/product2.do", method = RequestMethod.GET)
	public String product2(Locale locale, Model model) {
				System.out.println("吏꾩엯");
	
		return "/Template_company2/product2";
	}
	@RequestMapping(value = "/Template_company2/careers.do", method = RequestMethod.GET)
	public String careers(Locale locale, Model model) {
				System.out.println("吏꾩엯");
	
		return "/Template_company2/careers";
	}
	@RequestMapping(value = "/Template_company2/contact.do", method = RequestMethod.GET)
	public String contact(Locale locale, Model model) {
				System.out.println("吏꾩엯");
	
		return "/Template_company2/contact";
	}	
	


}
