package xyz.itwill.mapper;

import xyz.itwill.dto.Coin;

public interface CoinMapper {
	int insertCoin(Coin coin);
	Coin selectCoin(String id);
}
