package xyz.itwill.dao;

import java.util.List;

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
	public Favorite selectFavorite(String memberId) {
		return sqlSession.getMapper(FavoriteMapper.class).selectFavorite(memberId);
	}

	@Override
	public List<ProductFavoriteJoin> selectFavoriteList(String memberId) {
		return sqlSession.getMapper(FavoriteMapper.class).selectFavoriteList(memberId);
	}
	
	
	
}