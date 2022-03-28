package xyz.itwill.dao;

import java.util.List;

import xyz.itwill.dto.Coin;
import xyz.itwill.dto.CoinMemberJoin;

public interface CoinDAO {
	int insertCoin(Coin coin);
	Coin selectCoin(String id);
	List<CoinMemberJoin> selectCoinList();
}
