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
	int updateJoinBuyBtn(Map<String, Object> map);
	List<Product> selectBuyList(String buymember);
	//관리자
		List<Product> selectProductAdmin(Map<String, Object> map);
		int selectProductCountAdmin();
		int updateStatusAdmin(Map<String, Object> map);
		//리스트
		List<Product> selectListProductTest(Map<String, Object> map);
		int selectCountProductTest(Map<String, Object> map);
		List<Product> selectSearch(Map<String, Object> map);
		int selectSearchCount(String searchKeyword);
		int selectAllCount();
		
		int coinPlus(Map<String, Object> map);
		int coinMinus(Map<String, Object> map);
}