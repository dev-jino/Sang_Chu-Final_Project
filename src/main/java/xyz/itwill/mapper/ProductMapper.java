package xyz.itwill.mapper;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Product;

public interface ProductMapper {
	int insertProduct(Product product);
	int updateUserProduct(Product product);
	int updateAdminProduct(Product product);
	int deleteAdminProduct(int idx);
	Product selectProduct(int idx);
	List<Product> selectStatusProductList(Map<String, Object> map);
	List<Product> selectProductList();
	int selectCountProduct(Map<String, Object> map);
}
