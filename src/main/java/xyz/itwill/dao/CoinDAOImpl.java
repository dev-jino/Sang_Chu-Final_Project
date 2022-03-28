package xyz.itwill.dao;

import java.util.List;
import java.util.Map;

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
	
	@Override
	public List<CoinMemberJoin> selectCoinListPager(Map<String, Object> map) {
		return sqlSessoin.getMapper(CoinMapper.class).selectCoinListPager(map);
	}
	
	@Override
	public int selectCoinCount() {
		return sqlSessoin.getMapper(CoinMapper.class).selectCoinCount();
	}
	
	@Override
	public int updateCoinStatus(Coin coin) {
		return sqlSessoin.getMapper(CoinMapper.class).updateCoinStatus(coin);
	}
}
