package xyz.itwill.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import xyz.itwill.dao.ProductDAO;
import xyz.itwill.dto.Product;

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
	public void modifyAdminProduct(Product product) {
		productDAO.updateAdminProduct(product);
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


	
	
}
