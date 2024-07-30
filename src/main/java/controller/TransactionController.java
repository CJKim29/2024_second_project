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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.MemberDao;
import dao.RegItemDao;
import dao.TransactionDao;
import vo.MemberVo;
import vo.RegItemVo;
import vo.TransactionVo;

@Controller
@RequestMapping("/transaction/")
public class TransactionController {
	
	@Autowired
	TransactionDao transaction_dao;
	
	@Autowired
	RegItemDao regitem_dao;
	
	@Autowired
	MemberDao member_dao;
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	HttpSession session;
	
	@Autowired
	ServletContext application;

	public TransactionController() {
		// TODO Auto-generated constructor stub
		//System.out.println("--transactionController()--");
	}
	
	@RequestMapping("transaction_list.do")
	public String transaction_list(@RequestParam(name = "reg_idx", defaultValue = "0") int reg_idx,
								   @RequestParam(name = "mem_idx", defaultValue = "0") int mem_idx,
								   Model model) {
		
		MemberVo vo = member_dao.selectOne(mem_idx);
		
		// vo 객체가 null인지 확인
		/*
		 * if (vo == null) { System.out.println("MemberVo 객체가 null입니다."); } else {
		 * System.out.println("MemberVo: " + vo.getMem_id() + ", " + vo.getMem_point());
		 * }
		 */
		
		List<RegItemVo> list = regitem_dao.selectOneReg(reg_idx);
		
		//request binding
		model.addAttribute("vo", vo);
		model.addAttribute("list", list);
		
		return "/transaction/transaction";
	}
	
	@RequestMapping("auction_list.do")
	public String auction_list(@RequestParam(name = "reg_idx", defaultValue = "0") int reg_idx, Model model) {
		
		List<TransactionVo> list = transaction_dao.selectListTran();
		
		List<RegItemVo> list2 = regitem_dao.selectOneReg(reg_idx);
		
		//request binding
		model.addAttribute("list", list);
		model.addAttribute("list2", list2);
		
		return "/transaction/auction";
	}
	
	@RequestMapping("transaction_charge.do")
	public String charge(@RequestParam("charge_point") int charge_point, 
	                     @RequestParam("mem_idx") int mem_idx, 
	                     Model model) {
	    // 포인트 업데이트
	    int res = transaction_dao.updateIncPoint(charge_point, mem_idx);
	    
	    if (res > 0) {
	        // 업데이트 후 회원 정보 조회
	        MemberVo vo = transaction_dao.selectMember(mem_idx);
	        model.addAttribute("vo", vo);
	    }
	    
	    MemberVo vo = transaction_dao.selectMember(mem_idx);
        model.addAttribute("vo", vo);
	    
	    return "redirect:transaction_list.do?mem_idx=" + mem_idx;
	}
	
	/*
	 * @RequestMapping("transaction_charge_auction.do") public String
	 * transaction_charge_auction(int charge_point, int mem_idx, Model model) {
	 * 
	 * List<MemberVo> list = transaction_dao.updateIncPoint(charge_point, mem_idx);
	 * 
	 * //request binding model.addAttribute("list", list);
	 * 
	 * return "redirect:auction_list.do"; }
	 */
	
	@RequestMapping(value = "transaction.do", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> transaction(@RequestParam("transaction_point") int transaction_point, 
	                                       @RequestParam("mem_idx") int mem_idx) {
	    // 포인트 거래 처리
	    int res = transaction_dao.transaction(transaction_point, mem_idx);

	    // 업데이트된 회원 정보 조회
	    MemberVo vo = transaction_dao.selectMember(mem_idx);

	    // 응답할 데이터 준비
	    Map<String, Object> response = new HashMap<>();
	    response.put("mem_name", vo.getMem_name());
	    response.put("mem_point", vo.getMem_point());
	    return response;
	}

	
	@RequestMapping(value = "transaction_charge.do", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> charge(@RequestParam("charge_point") int charge_point, 
	                                  @RequestParam("mem_idx") int mem_idx) {
	    // 포인트 충전 처리
	    transaction_dao.updateIncPoint(charge_point, mem_idx);

	    // 업데이트된 회원 정보 조회
	    MemberVo vo = transaction_dao.selectMember(mem_idx);

	    // 응답할 데이터 준비
	    Map<String, Object> response = new HashMap<>();
	    response.put("mem_name", vo.getMem_name());
	    response.put("mem_point", vo.getMem_point());
	    return response;
	}
	
	@RequestMapping("bidding_auction.do")
	public String bidding_auction(int bidding_point, Model model) {
		
		List<RegItemVo> list = regitem_dao.updateIncBiddingPoint(bidding_point);
		
		//request binding
		model.addAttribute("list", list);
		
		return "redirect:auction_list.do";
	}

	
	@RequestMapping("bidding_auction_button.do")
	public String bidding_auction_button(int bidding_point_button, Model model) {
		
		List<RegItemVo> list = regitem_dao.updateIncBiddingPointButton(bidding_point_button);
		
		//request binding
		model.addAttribute("list", list);
		
		return "redirect:auction_list.do";
	}
	
	@RequestMapping("get_latest_prices.do")
	@ResponseBody
	public Map<String, Object> getLatestPrices() {
	    // 여기에서 DB에서 최신 가격을 조회하는 로직을 구현하세요.
	    // 예시로 모든 아이템의 최신 가격을 반환합니다.
	    Map<String, Object> response = new HashMap<>();
	    int latestPrice = regitem_dao.getLatestPrice(); // 모든 아이템의 최신 가격을 조회하는 DAO 메소드
	    response.put("latest_price", latestPrice);
	    return response;
	}
	
	@RequestMapping(value = "get_user_info.do", method = RequestMethod.GET)
	@ResponseBody
	public MemberVo getUserInfo(@RequestParam("mem_idx") int mem_idx) {
	    return transaction_dao.selectMember(mem_idx);
	}


}