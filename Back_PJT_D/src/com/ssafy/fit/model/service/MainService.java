package com.ssafy.fit.model.service;

import java.util.List;

import com.ssafy.fit.model.dto.Video;

public interface MainService {

	List<Video> getInterestViewFitVideo(); // 조회수 많은 순 동영상 정렬

	List<Video> getPartFitVideo(String fitPartName); // 부위별 동영상

}
