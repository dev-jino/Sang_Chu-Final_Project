package xyz.itwill.service;

import java.util.List;

import xyz.itwill.dto.Favorite;
import xyz.itwill.dto.ProductFavoriteJoin;

public interface FavoriteService {
	void addFavorite(Favorite favorite);
	Favorite getFavorite(String memberId);
	List<ProductFavoriteJoin> getFavoriteList(String memberId);
	
}
