package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.RegItemDao;
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
	public String list(Model model) {
		
		List<RegItemVo> list = regitem_dao.selectList();
		
		model.addAttribute("list", list);
		
		return "/regitem/regitem";
	}
}