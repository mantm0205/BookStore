package BookStore.service.impl;

import BookStore.Model.Product;
import BookStore.service.IFavoriteService;
import BookStore.service.IProductService;

import javax.inject.Inject;
import java.util.ArrayList;
import java.util.List;

public class FavoriteService implements IFavoriteService {
    @Inject
    IProductService productService;
    List<Product> listProduct = productService.getAll();
    public static ArrayList<Product> Favorite = new ArrayList<>();

    @Override
    public boolean addProductFavorite(String id) {
        int pid = Integer.parseInt(id);
        for (int i = 0;i< listProduct.size();i++){
            if (listProduct.get(i).getId() ==  pid){
                Favorite.add(listProduct.get(i));
                return  true;
            }
        }
        return false;
    }

    @Override
    public boolean deleteProductFavorite(String id) {
        int pid = Integer.parseInt(id);
        for (int i = 0; i< listProduct.size(); i++){
            if (Favorite.get(i).getId() == pid){
                 Favorite.remove(i);
                 return true;
            }
        }
        return false;
    }

    public static void main(String[] args) {

    }
}
