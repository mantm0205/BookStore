package BookStore.service;

import BookStore.Model.Product;

import java.util.List;

public interface ISearchService {
    List<Product> search(String keyword);
}
