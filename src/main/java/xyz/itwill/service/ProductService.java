package xyz.itwill.service;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Product;
import xyz.itwill.dto.ProductOrderJoin;

public interface ProductService {
	void addProduct(Product product);
	void modifyUserProduct(Product product);
	void modifyStatusProduct(Map<String, Object> map);
	void removeAdminProduct(int idx);
	Product getProduct(int idx);	
	List<Product> getStatusProductList(Map<String, Object> map);
	List<Product> getProductList();
	int getCountProduct(Map<String, Object> map);
	List<Product> getProductPaging(Map<String, Object> map);
	void modifyBuyProduct(int idx);
	List<ProductOrderJoin> getProductPagingList(Map<String, Object> map);
	
	List<ProductOrderJoin> getJoinPOList();
	void modifyJoinBuyBtn(Map<String, Object> map);
	List<Product> getBuyList(String buymember);
	
	//관리자
	
		List<Product> getProductAdmin(Map<String,Object> map);
		int getProductCountAdmin();
		int updateStatusAdmin(Map<String,Object> map);
		
		List<Product> getListProductTest(Map<String, Object> map);
		List<Product> getSearch(Map<String, Object> map);
		int getCountProductTest(Map<String, Object> map);
		int getSearchCount(String searchKeyword);
		int getAllCount();
		
		//코인
		int coinPlus1(Map<String, Object> map);
		int coinMinus1(Map<String, Object> map);
}