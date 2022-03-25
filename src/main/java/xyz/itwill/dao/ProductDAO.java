package xyz.itwill.dao;

import java.util.List;

import xyz.itwill.dto.Product;

public interface ProductDAO {
	int insertProduct(Product product);
	int updateUserProduct(Product product);
	int updateAdminProduct(Product product);
	int deleteAdminProduct(int idx);
	Product selectProduct(int idx);	
	List<Product> selectStatusProductList(String status);
	List<Product> selectProductList();
}
