package com.ssafy.fit.model.service;

import java.util.List;

import com.ssafy.fit.model.dao.MainDao;
import com.ssafy.fit.model.dao.MainDaoImpl;
import com.ssafy.fit.model.dto.Video;

public class MainServiceImpl implements MainService {

	private static MainService service = new MainServiceImpl();

	private MainDao dao = MainDaoImpl.getInstance();

	private MainServiceImpl() {
	}

	public static MainService getInstance() {
		return service;
	}

	@Override
	public List<Video> getInterestViewFitVideo() {
		return dao.selectInterestViewFitVideo();
	}

	@Override
	public List<Video> getPartFitVideo(String fitPartName) {
		return dao.selectPartFitVideo(fitPartName);
	}

}
