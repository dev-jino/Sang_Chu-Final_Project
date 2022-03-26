package xyz.itwill.mapper;

import java.util.List;

import xyz.itwill.dto.Product;

public interface ProductMapper {
	int insertProduct(Product product);
	int updateUserProduct(Product product);
	int updateAdminProduct(Product product);
	int deleteAdminProduct(int idx);
	Product selectProduct(int idx);
	List<Product> selectStatusProductList(int status);
	List<Product> selectProductList();
}
