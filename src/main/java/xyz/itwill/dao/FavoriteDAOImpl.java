package xyz.itwill.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import xyz.itwill.dto.Favorite;
import xyz.itwill.dto.ProductFavoriteJoin;
import xyz.itwill.mapper.FavoriteMapper;

@Repository
public class FavoriteDAOImpl implements FavoriteDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int insertFavorite(Favorite favorite) {
		return sqlSession.getMapper(FavoriteMapper.class).insertFavorite(favorite);
	}
	
	@Override
	public int deleteFavorite(Favorite favorite) {
		return sqlSession.getMapper(FavoriteMapper.class).deleteFavorite(favorite);
	}

	@Override
	public Favorite selectFavorite(String memberId) {
		return sqlSession.getMapper(FavoriteMapper.class).selectFavorite(memberId);
	}

	@Override
	public List<ProductFavoriteJoin> selectFavoriteList(String memberId) {
		return sqlSession.getMapper(FavoriteMapper.class).selectFavoriteList(memberId);
	}

	@Override
	public List<ProductFavoriteJoin> selectFavoritePaging(Map<String, Object> map) {
		return sqlSession.getMapper(FavoriteMapper.class).selectFavoritePaging(map);
	}

	@Override
	public int selectCountFavorite(String memberId) {
		return sqlSession.getMapper(FavoriteMapper.class).selectCountFavorite(memberId);
	}

	@Override
	public int selectCountProductFavorite(Map<String, Object> map) {
		return sqlSession.getMapper(FavoriteMapper.class).selectCountProductFavorite(map);
	}
}
