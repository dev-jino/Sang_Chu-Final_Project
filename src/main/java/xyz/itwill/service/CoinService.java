package xyz.itwill.service;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Coin;
import xyz.itwill.dto.CoinMemberJoin;

public interface CoinService {
	void addCoin(Coin coin);
	Coin getCoin(String id);
	List<CoinMemberJoin> getCoinList();
	List<CoinMemberJoin> getCoinListPager(Map<String, Object> map);
	int getCoinCount();
	int modifyCoinStatus(Coin coin);
}
