package xyz.itwill.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import xyz.itwill.dao.CoinDAO;
import xyz.itwill.dto.Coin;
import xyz.itwill.dto.CoinMemberJoin;

@Service
public class CoinServiceImpl implements CoinService {
	@Autowired
	private CoinDAO coinDAO;

	@Override
	public void addCoin(Coin coin) {
		coinDAO.insertCoin(coin);
	}

	@Override
	public Coin getCoin(String id) {
		return coinDAO.selectCoin(id);
	}
	
	@Override
	public List<CoinMemberJoin> getCoinList() {
		return coinDAO.selectCoinList();
	}
	
	@Override
	public List<CoinMemberJoin> getCoinListPager(Map<String, Object> map) {
		return coinDAO.selectCoinListPager(map);
	}

	@Override
	public int getCoinCount() {
		return coinDAO.selectCoinCount();
	}
	
	@Override
	public int modifyCoinStatus(Coin coin) {
		return coinDAO.updateCoinStatus(coin);
	}
}
