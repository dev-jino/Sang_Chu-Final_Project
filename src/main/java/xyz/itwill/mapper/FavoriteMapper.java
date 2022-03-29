package xyz.itwill.mapper;

import java.util.List;

import xyz.itwill.dto.Favorite;
import xyz.itwill.dto.ProductFavoriteJoin;

public interface FavoriteMapper {
	int insertFavorite(Favorite favorite);
	Favorite selectFavorite(String memberId);
	List<ProductFavoriteJoin> selectFavoriteList(String memberId);
}
