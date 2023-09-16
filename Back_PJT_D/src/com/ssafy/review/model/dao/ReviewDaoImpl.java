package com.ssafy.review.model.dao;

import java.util.ArrayList;
import java.util.List;

import com.ssafy.review.model.dto.Review;

public class ReviewDaoImpl implements ReviewDao {
	private static ReviewDao dao = new ReviewDaoImpl();

	private List<Review> list = new ArrayList<>(); // 데이터 베이스 대신

	private ReviewDaoImpl() {
		list.add(new Review("thx", "노세희", "도움이 많이 되었습니다. 감사합니다. ^^","swRNeYw1JkY"));
		list.add(new Review("하...죽는줄...", "정현아", "자체 0.5배속으로 간다.","swRNeYw1JkY"));
		list.add(new Review("3키로 감량 성공!!", "김유경", "이 영상 믿고 하세요!!","swRNeYw1JkY"));
		list.add(new Review("thx", "노세희", "도움이 많이 되었습니다. 감사합니다. ^^","54tTYO-vU2E"));
		list.add(new Review("하...죽는줄...", "정현아", "자체 0.5배속으로 간다.","QqqZH3j_vH0"));
		list.add(new Review("3키로 감량 성공!!", "김유경", "이 영상 믿고 하세요!!","tzN6ypk6Sps"));
		list.add(new Review("thx", "노세희", "도움이 많이 되었습니다. 감사합니다. ^^","u5OgcZdNbMo"));
		list.add(new Review("하...죽는줄...", "정현아", "자체 0.5배속으로 간다.","PjGcOP-TQPE"));
		list.add(new Review("3키로 감량 성공!!", "김유경", "이 영상 믿고 하세요!!","7TLk7pscICk"));
		
	}

	public static ReviewDao getInstance() {
		return dao;
	}

	@Override
	public List<Review> selectAll() {
		return list;
	}

	@Override
	public void insertReview(Review review) {
		list.add(review);

	}

	@Override
	public Review selectOne(int id) {
		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).getId() == id)
				return list.get(i);
		}
		return null;
	}

	@Override
	public void updateReview(Review review) {
		for (int i = 0; i < list.size(); i++) {
			Review r = list.get(i);
			if (r.getId() == review.getId()) {
				r.setTitle(review.getTitle());
				r.setContent(review.getContent());
				return;
			}
		}

	}

	@Override
	public void deleteReview(int id) {
		for (int i = 0; i < list.size(); i++) {
			Review r = list.get(i);
			if (r.getId() == id) {
				list.remove(i);
				return;
			}
		}

	}

	@Override
	public void updateViewCnt(int id) {
		for (int i = 0; i < list.size(); i++) {
			Review b = list.get(i);
			if (b.getId() == id) {
				int viewCnt = b.getViewCnt();
				b.setViewCnt(viewCnt + 1);
				break;
			}
		}

	}

}
