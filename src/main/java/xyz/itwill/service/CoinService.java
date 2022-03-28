package xyz.itwill.service;

import xyz.itwill.dto.Coin;

public interface CoinService {
	void addCoin(Coin coin);
	Coin getCoin(String id);
}
