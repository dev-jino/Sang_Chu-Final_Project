package xyz.itwill.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import xyz.itwill.dto.Coin;
import xyz.itwill.dto.CoinMemberJoin;
import xyz.itwill.mapper.CoinMapper;

@Repository
public class CoinDAOImpl implements CoinDAO {
	@Autowired
	private SqlSession sqlSessoin;

	@Override
	public int insertCoin(Coin coin) {
		return sqlSessoin.getMapper(CoinMapper.class).insertCoin(coin);
	}

	@Override
	public Coin selectCoin(String id) {
		return sqlSessoin.getMapper(CoinMapper.class).selectCoin(id);
	}
	
	@Override
	public List<CoinMemberJoin> selectCoinList() {
		return sqlSessoin.getMapper(CoinMapper.class).selectCoinList();
	}
}
