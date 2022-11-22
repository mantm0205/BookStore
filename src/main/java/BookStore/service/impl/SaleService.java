package BookStore.service.impl;

import BookStore.Dao.ISaleDAO;
import BookStore.Dao.impl.SaleDAO;
import BookStore.Model.Sale;
import BookStore.service.ISaleService;

import javax.inject.Inject;
import java.util.List;

public class SaleService implements ISaleService {
    @Inject private ISaleDAO saleDAO;
    @Override
    public List<Sale> getAllSale() {
        return saleDAO.getAllSale();
    }

    @Override
    public Sale getSaleById2() {
        return saleDAO.getSaleById2();
    }
    @Override
    public Sale getSaleById3() {
        return saleDAO.getSaleById3();
    }

    @Override
    public Sale getPercentId(String id) {
        return saleDAO.getPercentId(id);
    }

    public static void main(String[] args) {
        SaleDAO saleDAO = new SaleDAO();

//        Sale sale = saleDAO.getPercentId("2");
//        System.out.println(sale);
        List<Sale> list = saleDAO.getAllSale();
        for (Sale s: list) {
            System.out.println(s);
        }



    }
}
