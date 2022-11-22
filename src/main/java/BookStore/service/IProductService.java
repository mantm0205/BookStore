package BookStore.service;

import BookStore.Model.Product;

import java.util.List;

public interface IProductService {
    List<Product> getAll();
    List<Product> getProductByCategory(String cid);
    List<Product> getProductByPublisher(String pubid);
    Product getDetails(String id);
    Product getProductById(String id);
    List<Product> getNewProduct();
    List<Product> getProductByPrice();
    List<Product> getSaleProduct();
    Product getLastProduct();
    List<Product> getPageProduct(List<Product> list, int start, int end);
    List<Product> getPriceSmall();
    List<Product> getPriceMedium();
    List<Product> getPriceLarge();
    List<Product> getProductBySort(String select);
    List<Product> get12Product();
    List<Product> getNextProduct(int count);
    void deleteProduct(String id);
    void insertProduct(Product product);
    void updateProduct(Product product);

    List<Product> getRandomPr();
}
