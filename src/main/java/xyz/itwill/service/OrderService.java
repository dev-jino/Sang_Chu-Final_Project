package xyz.itwill.service;

import xyz.itwill.dto.Order;

public interface OrderService {
	void addOrder(Order order);
	void modifySellProduct(int idx);
}
