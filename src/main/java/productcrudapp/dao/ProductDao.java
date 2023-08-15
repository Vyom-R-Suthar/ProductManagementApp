// Jai Swaminarayan KESHAV , Swami-Shreeji
package productcrudapp.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import productcrudapp.model.Product;

@Component
public class ProductDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	// create product
	@Transactional
	public void createProduct(Product product) {
		hibernateTemplate.saveOrUpdate(product);
	}
	
	// get all products
	public List<Product> getProducts(){
		List<Product> products = hibernateTemplate.loadAll(Product.class);
		return products;
	}
	
	// delete single product
	@Transactional
	public void deleteProduct(int productId) {
		Product p = hibernateTemplate.load(Product.class, productId);
		hibernateTemplate.delete(p);
	}
	
	// get single product
	public Product getProduct(int productId) {
		return hibernateTemplate.get(Product.class, productId);
	}
}
