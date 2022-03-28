package xyz.itwill.mapper;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Coin;
import xyz.itwill.dto.CoinMemberJoin;

public interface CoinMapper {
	int insertCoin(Coin coin);
	Coin selectCoin(String id);
	List<CoinMemberJoin> selectCoinList();
	List<CoinMemberJoin> selectCoinListPager(Map<String, Object> map);
	int selectCoinCount();
	int updateCoinStatus(Coin coin);
}
