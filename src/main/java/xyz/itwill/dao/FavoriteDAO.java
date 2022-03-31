package xyz.itwill.dao;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Favorite;
import xyz.itwill.dto.ProductFavoriteJoin;

public interface FavoriteDAO {
	int insertFavorite(Favorite favorite);
	Favorite selectFavorite(String memberId);
	List<ProductFavoriteJoin> selectFavoriteList(String memberId);
	List<Favorite> selectFavoritePaging(Map<String, Object> map);
	int selectCountFavorite(String memberId);
}
