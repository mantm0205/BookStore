package BookStore.Dao;

import BookStore.Model.Sale;

import java.util.List;

public interface ISaleDAO {
    List<Sale> getAllSale();
    Sale getSaleById2();
    Sale getSaleById3();
    Sale getPercentId(String id);


}
