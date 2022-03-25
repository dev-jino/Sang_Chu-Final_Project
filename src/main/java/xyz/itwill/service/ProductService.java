package xyz.itwill.service;

import java.util.List;

import xyz.itwill.dto.Product;

public interface ProductService {
	void addProduct(Product product);
	void modifyUserProduct(Product product);
	void modifyAdminProduct(Product product);
	void removeAdminProduct(int idx);
	Product getProduct(int idx);	
	List<Product> getStatusProductList(String status);
	List<Product> getProductList();
}
