package xyz.itwill.mapper;

import java.util.List;

import xyz.itwill.dto.Coin;
import xyz.itwill.dto.CoinMemberJoin;

public interface CoinMapper {
	int insertCoin(Coin coin);
	Coin selectCoin(String id);
	List<CoinMemberJoin> selectCoinList();
}
