package com.ssafy.fit.model.dao;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import com.ssafy.fit.model.dto.Video;

public class MainDaoImpl implements MainDao {
	private static MainDao dao = new MainDaoImpl();
	
	private List<Video> list = new ArrayList<>();
	
	private MainDaoImpl() {
		list = new ArrayList<Video>();
		list.add(new Video("gMaB-fG4u4g", "ThankyouBUBU", 10, "전신", "전신 다이어트 최고의 운동 [칼소폭 찐 핵핵매운맛]"));
		list.add(new Video("swRNeYw1JkY", "ThankyouBUBU", 12, "전신", "하루 15분! 전신 칼로리 불태우는 다이어트 운동"));
		list.add(new Video("54tTYO-vU2E", "ThankyouBUBU", 22, "상체", "상체 다이어트 최고의 운동 BEST [팔뚝살/겨드랑이살/등살/가슴어깨라인]"));
		list.add(new Video("QqqZH3j_vH0", "ThankyouBUBU", 43, "상체", "상체비만 다이어트 최고의 운동 [상체 핵매운맛]"));
		list.add(new Video("tzN6ypk6Sps", "김강민", 7, "하체", "하체운동이 중요한 이유? 이것만 보고 따라하자 ! [하체운동 교과서]"));
		list.add(new Video("u5OgcZdNbMo", "GYM종국", 55, "하체", "저는 하체 식주의자 입니다"));
		list.add(new Video("PjGcOP-TQPE", "ThankyouBUBU", 65, "복부", "11자복근 복부 최고의 운동 [복근 핵매운맛]"));
		list.add(new Video("7TLk7pscICk", "SomiFit", 110, "복부", "(Sub)누워서하는 5분 복부운동!! 효과보장! (매일 2주만 해보세요!)"));
	}

	public static MainDao getInstance() {
		return dao;
	}

	@Override
	public List<Video> selectInterestViewFitVideo() {

		Collections.sort(list, new Comparator<Video>() {

			@Override
			public int compare(Video o1, Video o2) {
				return o2.getViewCnt() - o1.getViewCnt();
			}
		});

		return list;
	}

	@Override
	public List<Video> selectPartFitVideo(String fitPartName) {
		List<Video> tmpList = new ArrayList<>(); // tmpList: 조건에 맞는 Video 넣어서 반환하기 위한

		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).getFitPartName().equals(fitPartName))
				tmpList.add(list.get(i));
		}
		return tmpList;
	}
}
