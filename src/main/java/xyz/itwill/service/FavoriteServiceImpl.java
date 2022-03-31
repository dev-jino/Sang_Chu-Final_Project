package xyz.itwill.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import xyz.itwill.dao.FavoriteDAO;
import xyz.itwill.dto.Favorite;
import xyz.itwill.dto.ProductFavoriteJoin;


@Service
public class FavoriteServiceImpl implements FavoriteService {
	@Autowired
	private FavoriteDAO favoriteDAO;

	@Override
	public void addFavorite(Favorite favorite) {
		favoriteDAO.insertFavorite(favorite);
		
	}

	@Override
	public Favorite getFavorite(String memberId) {
		return favoriteDAO.selectFavorite(memberId);
	}

	@Override
	public List<ProductFavoriteJoin> getFavoriteList(String memberId) {
		return favoriteDAO.selectFavoriteList(memberId);
		
	}

	@Override
	public List<Favorite> getFavoritePaging(Map<String, Object> map) {
		return favoriteDAO.selectFavoritePaging(map);
	}

	@Override
	public int getCountFavorite(String memberId) {
		return favoriteDAO.selectCountFavorite(memberId);
	}
	
	
}
