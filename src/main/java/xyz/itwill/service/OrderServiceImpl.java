package xyz.itwill.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import xyz.itwill.dao.FavoriteDAO;
import xyz.itwill.dao.OrderDAO;
import xyz.itwill.dto.Order;

@Service
public class OrderServiceImpl implements OrderService{
	@Autowired
	private OrderDAO orderDAO;

	@Override
	public void addOrder(Order order) {
		orderDAO.insertOrder(order);
	}

	@Override
	public void modifySellProduct(int idx) {
		orderDAO.updateSellProduct(idx);
	}
	
	
}
