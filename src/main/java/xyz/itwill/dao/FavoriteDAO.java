package xyz.itwill.dao;

import java.util.List;

import xyz.itwill.dto.Favorite;
import xyz.itwill.dto.ProductFavoriteJoin;

public interface FavoriteDAO {
	int insertFavorite(Favorite favorite);
	Favorite selectFavorite(String memberId);
	List<ProductFavoriteJoin> selectFavoriteList(String memberId);
}
