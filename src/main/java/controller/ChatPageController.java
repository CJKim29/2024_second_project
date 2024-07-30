package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import dao.ChatListDao;
import dao.ChatPageDao;
import vo.ChatListVo;
import vo.ChatPageVo;
import vo.MemberVo;

@Controller
@RequestMapping("/chatting/")
public class ChatPageController {

	@Autowired
	ChatPageDao	chatpage_dao;
	
	@Autowired
	ChatListDao chatlist_dao;
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	HttpSession session;
	
	@RequestMapping("list.do")
	public String list(Model model) {
	
		
		//ChatPageVo vo = chatpage_dao.selectOne();
		
		//model.addAttribute("vo", vo);
		
		return "/chatting/chat_page";
	}
	
	@RequestMapping("listOne.do")
	public String list(int mem_idx, Model model) {
		
		ChatPageVo vo = chatpage_dao.selectOne(mem_idx);
		
		model.addAttribute("vo", vo);
		
		//회원목록 가져오기
		List<ChatPageVo> list = chatpage_dao.selectList();
		
		List<ChatListVo>	list_chat = chatlist_dao.selectList();
		//request binding
		model.addAttribute("list", list);
		model.addAttribute("list_chat", list_chat);
		
		return "/chatting/chat_page";
	}
	
	@RequestMapping("insert_form.do")
	public String insert_form() {
		
		return "chatting/chatting_insert_form";
	}
	
	@RequestMapping("insert.do")
	public String insert(ChatPageVo vo, RedirectAttributes ra) {	//DS야 paramete(get으로)받아서 vo로 포장해서 줘
		
		//로그인 유저 정보 얻어오기
		MemberVo user = (MemberVo) session.getAttribute("user"); //object타입으로 받아왔기 때문에 다운캐스팅
		
		if(user==null) {
			
			ra.addAttribute("reason", "session_timeout");
			
			return "redirect:../member/login_form.do";
		}
		
		//사용자정보 vo에 등록
		vo.setMem_idx(user.getMem_idx());
		vo.setMem_name(user.getMem_name());
		
		
		//DB insert
		int res = chatpage_dao.insert(vo);
		
		return "redirect:listOne.do";
	}
}