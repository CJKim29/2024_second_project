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

import dao.RegItemDao;
import util.MyCommon;
import util.Paging;
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
						Model model, RegItemVo vo) {
		
		
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
		
		return "/regitem/regitem";
	}
}