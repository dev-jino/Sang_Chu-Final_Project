package xyz.itwill.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import xyz.itwill.dao.CoinDAO;

@Service
public class CoinServiceImpl implements CoinService {
	@Autowired
	private CoinDAO coinDAO;
}
