package BookStore.service;

import BookStore.Model.Sale;

import java.util.List;

public interface ISaleService {
    List<Sale> getAllSale();
    Sale getSaleById2();
    Sale getSaleById3();
    Sale getPercentId(String id);
}
