package xyz.itwill.mapper;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Product;
import xyz.itwill.dto.ProductOrderJoin;

public interface ProductMapper {
	int insertProduct(Product product);
	int updateUserProduct(Product product);
	int updateStatusProduct(Map<String, Object> map);
	int deleteAdminProduct(int idx);
	Product selectProduct(int idx);
	List<Product> selectStatusProductList(Map<String, Object> map);
	List<Product> selectProductList();
	int selectCountProduct(Map<String, Object> map);
	List<Product> selectProductPaging(Map<String, Object> map);
	int updateBuyProduct(int idx);
	List<ProductOrderJoin> selectProductPagingList(Map<String, Object> map);
	
	List<ProductOrderJoin> selectJoinPOList();
	int insertJoinBuyBtn(Product product);
	int insertJoinPayBtn(Product product);
}
