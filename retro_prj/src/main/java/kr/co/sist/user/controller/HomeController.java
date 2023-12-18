package kr.co.sist.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.sist.user.domain.GoodsDomain;
import kr.co.sist.user.service.HomeService;

@Controller
public class HomeController {
	
	@Autowired
	private HomeService hs;
	
	@GetMapping("/index.do")
	public String Home(Model model) {
		List<GoodsDomain> list = hs.searchAllProduct();
		model.addAttribute("npl",hs.searchNewProduct());
		model.addAttribute("rpl",list.subList(0, 5));
		model.addAttribute("ppl",list.subList(5, 9));
		
		return "user/home";
	}
}
