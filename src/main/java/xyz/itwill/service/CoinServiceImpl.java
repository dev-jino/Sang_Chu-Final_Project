package xyz.itwill.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import xyz.itwill.dao.CoinDAO;
import xyz.itwill.dto.Coin;

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
	
	
}
