package xyz.itwill.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CoinDAOImpl implements CoinDAO {
	@Autowired
	private SqlSession sqlSessoin;
}
