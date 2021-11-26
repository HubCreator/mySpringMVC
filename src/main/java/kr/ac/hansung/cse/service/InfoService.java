package kr.ac.hansung.cse.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.hansung.cse.dao.InfoDao;
import kr.ac.hansung.cse.model.Info;

@Service
public class InfoService {
	
	@Autowired
	private InfoDao infoDao; // DAO와 연관관계를 맺음
	
	public List<Info> getSimpleInfo() {
		return infoDao.getSimpleInfo();
	}
	
	public List<Info> getDetailInfo() {
		return infoDao.getDetailInfo();
	}
}
