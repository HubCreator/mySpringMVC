package kr.ac.hansung.cse.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.hansung.cse.model.Info;
import kr.ac.hansung.cse.service.InfoService;

@Controller
public class MyInfoController {
	@Autowired
	private InfoService infoService; // service 로직과 연관관계를 맺음
	
	@RequestMapping("/myInfo")
	public String showInfo(Model model) {
		List<Info> simpleInfo = infoService.getSimpleInfo();
		model.addAttribute("simpleInfo", simpleInfo);
		
		return "myInfo";
	}
	
	
}
