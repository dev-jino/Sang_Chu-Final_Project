package xyz.itwill.dao;

import xyz.itwill.dto.Order;

public interface OrderDAO {
	int insertOrder(Order order);
	int updateSellProduct(int idx);
}
