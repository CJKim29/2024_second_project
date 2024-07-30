package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.ItemDao;
import vo.ItemVo;

@Controller
@RequestMapping("/item/")
public class ItemController {
	
	@Autowired
	ItemDao item_dao;
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	HttpSession session;
	
	@Autowired
	ServletContext application;

	public ItemController() {
		// TODO Auto-generated constructor stub
		System.out.println("--ItemController()--");
	}
	
	// /photo/list.do
	// /photo/list.do?page=1
	@RequestMapping("list.do")
	public String list(Model model) {
		
		List<ItemVo> list = item_dao.selectList();
		
		//request binding
		model.addAttribute("list", list);
		
		return "/item/item_list";
	}
	
	@RequestMapping("list_category.do")
	public String list_category(Model model, String category) {
		
		if(category==null || category.isEmpty()) {	// sajob.isEmpty() <==> sajob.equals("")
			category = "all";
		}
		
		//사원목록 가져오기
		List<ItemVo> list = null;
		
		
		if(category.equals("all")) {
			//전체조회
			list = item_dao.selectList();
			
		} else {
			//직급별 조회
			list = item_dao.selectListFromCategory(category);
		}
		model.addAttribute("list", list);
		
		return "/item/item_list2";
	}
	
	@RequestMapping("list_condition.do")
	public String list_condition(String category1, String category2,
								 String grade, Model model) {
		
		if(category1==null) category1="all";
		
		if(category2==null) category2="all";
		
		if(grade==null) grade="all";
		
		
		//검색할 조건을 전달할 Map
		Map<String, Object> map = new HashMap<String, Object>();
		
		//전체가 아니면
		if(!category1.equals("all")) { 
			map.put("category1", category1);
		}

		//전체가 아니면
		if(!category2.equals("all")) { 
			map.put("category2", category2);
		}
		
		//전체가 아니면
		if(!grade.equals("all")) { 
			map.put("grade", grade);
		}	
		
		//사원목록 가져오기
		List<ItemVo> list = item_dao.selectList(map);
		
		model.addAttribute("list", list);
		
		return "/item/item_list2";
	}
	
	@RequestMapping("list_grade.do")
	public String list_grade(String grade, Model model) {
		
		if(grade==null || grade.isEmpty()) {	// sajob.isEmpty() <==> sajob.equals("")
			grade = "all";
		}
		
		List<ItemVo> list = null;
		
		if(grade.equals("all")) {

			list = item_dao.selectList();
			
		} else {
			
			list = item_dao.selectListFromGrade(grade);
		}

		model.addAttribute("list", list);
		
		return "/item/item_list2";
	}
	
	
	@RequestMapping("list_search.do")
	public String list_search(String search_text, Model model) {
		
		//검색조건을 담을 맵
		Map<String, String> map = new HashMap<String, String>();
		
			map.put("search_text", search_text);
		
		//방명록 데이터 가져오기
		List<ItemVo> list = item_dao.selectListSearch(map);
		
		request.setAttribute("list", list);
		
		return "/item/item_list2";
	}
	
	
	
	
	
	
	
	
}