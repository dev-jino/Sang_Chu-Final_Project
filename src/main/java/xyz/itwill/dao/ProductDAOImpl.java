package xyz.itwill.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import xyz.itwill.dto.Product;
import xyz.itwill.dto.ProductOrderJoin;
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
	public int updateStatusProduct(Map<String, Object> map) {
		return sqlSession.getMapper(ProductMapper.class).updateStatusProduct(map);
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

	@Override
	public int selectCountProduct(Map<String, Object> map) {
		return sqlSession.getMapper(ProductMapper.class).selectCountProduct(map);
	}

	@Override
	public List<Product> selectProductPaging(Map<String, Object> map) {
		return sqlSession.getMapper(ProductMapper.class).selectProductPaging(map);
	}

	@Override
	public int updateBuyProduct(int idx) {
		return sqlSession.getMapper(ProductMapper.class).updateBuyProduct(idx);
	}

	@Override
	public List<ProductOrderJoin> selectProductPagingList(Map<String, Object> map) {
		return sqlSession.getMapper(ProductMapper.class).selectProductPagingList(map);
	}

	@Override
	public List<ProductOrderJoin> selectJoinPOList() {
		return sqlSession.getMapper(ProductMapper.class).selectJoinPOList();
	}

	@Override
	public int updateJoinBuyBtn(Map<String, Object> map) {
		return sqlSession.getMapper(ProductMapper.class).updateJoinBuyBtn(map);
	}

	@Override
	public List<Product> selectBuyList(String buymember) {
		return sqlSession.getMapper(ProductMapper.class).selectBuyList(buymember);
	}
	//관리자
		@Override
		public List<Product> selectProductAdmin(Map<String, Object> map) {
			return sqlSession.getMapper(ProductMapper.class).selectProductAdmin(map);
		}

		@Override
		public int selectProductCountAdmin() {
			return sqlSession.getMapper(ProductMapper.class).selectProductCountAdmin();
		}


		@Override
		public int updateStatusAdmin(Map<String, Object> map) {
			return sqlSession.getMapper(ProductMapper.class).updateStatusAdmin(map);
		}
		//리스트
		@Override
		public List<Product> selectListProductTest(Map<String, Object> map) {
			return sqlSession.getMapper(ProductMapper.class).selectListProductTest(map);
		}

		@Override
		public List<Product> selectSearch(Map<String, Object> map) {
			return sqlSession.getMapper(ProductMapper.class).selectSearch(map);
		}

		@Override
		public int selectCountProductTest(Map<String, Object> map) {
			return sqlSession.getMapper(ProductMapper.class).selectCountProductTest(map);
		}

		@Override
		public int selectSearchCount(String searchKeyword) {
			return sqlSession.getMapper(ProductMapper.class).selectSearchCount(searchKeyword);
		}

		@Override
		public int selectAllCount() {
			return sqlSession.getMapper(ProductMapper.class).selectAllCount();
			}

		@Override
		public int coinPlus(Map<String, Object> map) {
			return sqlSession.getMapper(ProductMapper.class).coinPlus(map);
		}

		@Override
		public int coinMinus(Map<String, Object> map) {
			return sqlSession.getMapper(ProductMapper.class).coinMinus(map);
		}
	
}