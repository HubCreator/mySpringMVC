package kr.ac.hansung.cse.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ac.hansung.cse.model.Info;
import kr.ac.hansung.cse.service.InfoService;

@Controller
public class MyInfoController {
	@Autowired
	private InfoService infoService; // service 로직과 연관관계를 맺음
	
	@RequestMapping("/infoMenu")
	public String showInfoMenu(Model model) {
		
		return "infoMenu";
	}
	
	@RequestMapping("/myInfo")
	public String showInfo(Model model) {
		List<Info> simpleInfo = infoService.getSimpleInfo();
		model.addAttribute("simpleInfo", simpleInfo);
		
		return "myInfo";
	}
	
	@RequestMapping("/detailInfo")
	public String showDetailInfo(Model model, 
			@RequestParam String year, 
			@RequestParam String semester) {
		List<Info> detailInfo = infoService.getDetailInfo(year, semester);
		model.addAttribute("detailInfo", detailInfo);
		
		return "detailInfo";
	}
	
}
