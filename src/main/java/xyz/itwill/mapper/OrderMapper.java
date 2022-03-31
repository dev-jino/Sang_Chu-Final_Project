package xyz.itwill.mapper;

import xyz.itwill.dto.Order;

public interface OrderMapper {
	int insertOrder(Order order);
	int updateSellProduct(int idx);
}
