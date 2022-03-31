package xyz.itwill.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import xyz.itwill.dto.Order;
import xyz.itwill.mapper.OrderMapper;

@Repository
public class OrderDAOImpl implements OrderDAO{
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int insertOrder(Order order) {
		return sqlSession.getMapper(OrderMapper.class).insertOrder(order);
	}

	@Override
	public int updateSellProduct(int idx) {
		return sqlSession.getMapper(OrderMapper.class).updateSellProduct(idx);
	}
	
	
}
