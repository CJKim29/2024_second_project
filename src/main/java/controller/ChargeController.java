package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/charge_page/")
public class ChargeController {

	@Autowired
	HttpServletRequest request;
	
	@Autowired
	HttpSession session;
	
	@RequestMapping("list.do")
	public String list(Model model) {
	
		
		//ChatPageVo vo = chatpage_dao.selectOne();
		
		//model.addAttribute("vo", vo);
		
		return "/charge_page/charge_page";
	}
}