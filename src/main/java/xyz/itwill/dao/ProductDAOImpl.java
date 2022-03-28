package xyz.itwill.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import xyz.itwill.dto.Product;
import xyz.itwill.mapper.ProductMapper;

@Repository
public class ProductDAOImpl implements ProductDAO{
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int insertProduct(Product product) {
		return sqlSession.getMapper(ProductMapper.class).insertProduct(product);
	}

	@Override
	public int updateUserProduct(Product product) {
		return sqlSession.getMapper(ProductMapper.class).updateUserProduct(product);
	}

	@Override
	public int updateAdminProduct(Product product) {
		return sqlSession.getMapper(ProductMapper.class).updateAdminProduct(product);
	}

	@Override
	public int deleteAdminProduct(int idx) {
		return sqlSession.getMapper(ProductMapper.class).deleteAdminProduct(idx);
	}

	@Override
	public Product selectProduct(int idx) {
		return sqlSession.getMapper(ProductMapper.class).selectProduct(idx);
	}

	@Override
	public List<Product> selectProductList() {
		return sqlSession.getMapper(ProductMapper.class).selectProductList();
	}

	@Override
	public List<Product> selectStatusProductList(Map<String, Object> map) {
		return sqlSession.getMapper(ProductMapper.class).selectStatusProductList(map);
	}
	
	
}
