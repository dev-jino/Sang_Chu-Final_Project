package xyz.itwill.dao;

import xyz.itwill.dto.Coin;

public interface CoinDAO {
	int insertCoin(Coin coin);
	Coin selectCoin(String id);
}
