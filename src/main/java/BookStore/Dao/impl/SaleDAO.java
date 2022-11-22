package BookStore.Dao.impl;

import BookStore.Dao.ISaleDAO;
import BookStore.Model.Sale;
import BookStore.mapper.ProductMapper;
import BookStore.mapper.SaleMapper;

import java.util.List;

public class SaleDAO extends AbstractDAO<Sale> implements ISaleDAO {
    @Override
    public List<Sale> getAllSale() {
        String sql = "SELECT * FROM sale s JOIN products p WHERE p.sale_id = s.id and s.id > 1";
        return query(sql,new SaleMapper(),new ProductMapper());
    }

    @Override
    public Sale getSaleById2() {
        String sql = "SELECT s.* FROM sale s JOIN products p WHERE p.sale_id = s.id AND s.id = 2";
        return queryOne(sql,new SaleMapper());
    }
    @Override
    public Sale getSaleById3() {
        String sql = "SELECT s.* FROM sale s JOIN products p WHERE p.sale_id = s.id AND s.id = 3";
        return queryOne(sql,new SaleMapper());
    }
    public List<Sale> getPercent(){
        String sql = "SELECT * FROM sale s JOIN products p ON p.sale_id = s.id WHERE p.sale_id = s.id ";
        return query(sql,new SaleMapper());
    }
    @Override
    public Sale getPercentId(String id){
        String sql = "SELECT s.* FROM sale s JOIN products p WHERE p.sale_id = s.id AND p.sale_id = ?";
        return queryOne(sql,new SaleMapper(),id);
    }

    public static void main(String[] args) {
        SaleDAO saleDAO = new SaleDAO();
//        List<Sale> sale = saleDAO.getPercent();
//        for (Sale s: sale){
//            System.out.println(s);
//        }
        System.out.println(saleDAO.getPercentId("2"));


    }
}
