package xyz.itwill.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import xyz.itwill.dao.ProductDAO;
import xyz.itwill.dto.Product;
import xyz.itwill.dto.ProductOrderJoin;

@Service
public class ProductServiceImpl implements ProductService{
	@Autowired
	private ProductDAO productDAO;

	@Override
	public void addProduct(Product product) {
		productDAO.insertProduct(product);
	}

	@Override
	public void modifyUserProduct(Product product) {
		productDAO.updateUserProduct(product);
	}

	@Override
	public void modifyStatusProduct(Map<String, Object> map) {
		productDAO.updateStatusProduct(map);
	}

	@Override
	public void removeAdminProduct(int idx) {
		productDAO.deleteAdminProduct(idx);
	}

	@Override
	public Product getProduct(int idx) {
		return productDAO.selectProduct(idx);
	}

	@Override
	public List<Product> getStatusProductList(Map<String, Object> map) {
		return productDAO.selectStatusProductList(map);
	}

	@Override
	public List<Product> getProductList() {
		return productDAO.selectProductList();
	}

	@Override
	public int getCountProduct(Map<String, Object> map) {
		return productDAO.selectCountProduct(map);
	}

	@Override
	public List<Product> getProductPaging(Map<String, Object> map) {
		return productDAO.selectProductPaging(map);
	}

	@Override
	public void modifyBuyProduct(int idx) {
		productDAO.updateBuyProduct(idx);
		
	}

	@Override
	public List<ProductOrderJoin> getProductPagingList(Map<String, Object> map) {
		return productDAO.selectProductPagingList(map);
	}


	@Override
	public List<ProductOrderJoin> getJoinPOList() {
		return productDAO.selectJoinPOList();
	}

	@Override
	public void modifyJoinBuyBtn(Map<String, Object> map) {
		productDAO.updateJoinBuyBtn(map);
	}

	@Override
	public List<Product> getBuyList(String buymember) {
		return productDAO.selectBuyList(buymember);
	}

	
	
}
