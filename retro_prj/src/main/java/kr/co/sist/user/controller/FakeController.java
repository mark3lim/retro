package kr.co.sist.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FakeController {
	
	@GetMapping("/fraud.do")
	public String fakeFrm() {
		return "user/searchFake";
	}

}
