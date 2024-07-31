package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import dao.ItemDao;
import dao.RegItemDao;
import util.MyCommon;
import util.Paging;
import vo.ItemVo;
import vo.RegItemVo;

@Controller
@RequestMapping("/regitem/")
public class RegItemController {

	@Autowired
	RegItemDao regitem_dao;
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	HttpSession session;
	
	@RequestMapping("list.do")
	public String list(@RequestParam(name = "page",defaultValue = "1") int nowPage,
						Model model) {
		
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		int start = (nowPage-1) * MyCommon.Auction.BLOCK_LIST+1;
		int end	  = start + MyCommon.Auction.BLOCK_LIST-1;
		
		map.put("start", start);
		map.put("end", end);
		
		List<RegItemVo> list = regitem_dao.selectList(map);
		
		// 전체 게시물 수
		int rowTotal = regitem_dao.selectRowTotal();
		
		//pageMenu생성하기
		String pageMenu = Paging.getPaging("list.do",
										   nowPage, 
										   rowTotal, 
										   MyCommon.Auction.BLOCK_LIST, 
										   MyCommon.Auction.BLOCK_PAGE);
		
		model.addAttribute("list", list);
		model.addAttribute("pageMenu", pageMenu);
		
		return "/regitem/regitem0";
	}
	
	@RequestMapping("list_category.do")
	public String list_category(Model model, String category) {
		
		if(category==null || category.isEmpty()) {	// sajob.isEmpty() <==> sajob.equals("")
			category = "all";
		}
		
		//사원목록 가져오기
		List<RegItemVo> list = null;
		
		
		if(category.equals("all")) {
			//전체조회
			list = regitem_dao.selectList();
			
		} else {
			//직급별 조회
			list = regitem_dao.selectListFromCategory(category);
		}
		model.addAttribute("list", list);
		
		return "/regitem/regitem";
	}
	
	@RequestMapping("list_grade.do")
	public String list_grade(String grade, Model model) {
		
		if(grade==null || grade.isEmpty()) {	// sajob.isEmpty() <==> sajob.equals("")
			grade = "all";
		}
		
		List<RegItemVo> list = null;
		
		if(grade.equals("all")) {

			list = regitem_dao.selectList();
			
		} else {
			
			list = regitem_dao.selectListFromGrade(grade);
		}

		model.addAttribute("list", list);
		
		return "/regitem/regitem";
	}
	
	@RequestMapping("list_condition.do")
	public String list_condition(String category,
								 String grade, Model model) {
		
		if(category==null) category="all";
		
		
		if(grade==null) grade="all";
		
		
		//검색할 조건을 전달할 Map
		Map<String, Object> map = new HashMap<String, Object>();
		
		//전체가 아니면
		if(!category.equals("all")) { 
			map.put("category", category);
		}

		//전체가 아니면
		if(!grade.equals("all")) { 
			map.put("grade", grade);
		}	
		
		//사원목록 가져오기
		List<RegItemVo> list = regitem_dao.selectListCondition(map);
		
		model.addAttribute("list", list);
		
		return "/regitem/regitem";
	}
	
	@RequestMapping("list_search.do")
	public String list_search(String search_text, Model model) {
		
		//검색조건을 담을 맵
		Map<String, String> map = new HashMap<String, String>();
		
			map.put("search_text", search_text);
		
		//방명록 데이터 가져오기
		List<RegItemVo> list = regitem_dao.selectListSearch(map);
		
		request.setAttribute("list", list);
		
		return "/regitem/regitem";
	}
}