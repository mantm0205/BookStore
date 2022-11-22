package BookStore.service;

public interface IFavoriteService {
    public boolean addProductFavorite(String id);
    public boolean deleteProductFavorite(String id);
}
