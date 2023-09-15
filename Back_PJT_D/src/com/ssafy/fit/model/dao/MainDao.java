package com.ssafy.fit.model.dao;

import java.util.List;

import com.ssafy.fit.model.dto.Video;

public interface MainDao {
	List<Video> selectInterestViewFitVideo(); // 조회수 많은 순 동영상 정렬

	List<Video> selectPartFitVideo(String fitPartName); // 부위별 동영상

}
