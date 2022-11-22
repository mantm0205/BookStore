package BookStore.service.impl;

import BookStore.Dao.IProductDAO;
import BookStore.Dao.impl.ProductDAO;
import BookStore.Model.Product;
import BookStore.service.ISearchService;

import javax.inject.Inject;
import java.util.ArrayList;
import java.util.List;

public class SearchService implements ISearchService {
    @Inject
    IProductDAO productDAO;
    @Override
    public List<Product> search(String keyword) {
        List<Product> list = new ArrayList<>();
        list = productDAO.getByName(keyword);
        return list;

    }

    public static void main(String[] args) {
        ProductDAO productDAO = new ProductDAO();
        List<Product> list = productDAO.getByName("Ti");
        for (Product p: list) {
            System.out.println(p);
        }
    }
}
