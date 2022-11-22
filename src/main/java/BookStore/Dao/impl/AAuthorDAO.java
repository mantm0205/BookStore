package BookStore.Dao.impl;

import BookStore.Model.Author;
import BookStore.Model.Category;
import BookStore.Model.Product;
import BookStore.Model.Publisher;
import BookStore.config.ConnectionPool;
import BookStore.config.DBContext;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AAuthorDAO {
    Connection connection = null;
    PreparedStatement prestament = null;
    ResultSet rs = null;

    public List<Author> getAllAuthor() {
        List<Author> list = new ArrayList<>();
        String query = "SELECT * FROM author";
        try {
            connection = new DBContext().getConnection();
            prestament = connection.prepareStatement(query);
            rs = prestament.executeQuery();


            while (rs.next()) {
                list.add( new Author(rs.getInt("id"),
                        rs.getString("name")));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public List<Author> getListPage(List<Author> list,int start, int end){
        ArrayList<Author> arr = new ArrayList<>();
        for(int i = start ; i< end;i++) {
            arr.add(list.get(i));
        }
        return arr;
    }

    public void insertAuthor(String id,String authorname){

        String query = "INSERT INTO  author (id,name) VALUES(?,?)";
        try {
            connection = new DBContext().getConnection();
            prestament = connection.prepareStatement(query);
            prestament.setString(1,id);
            prestament.setString(2,authorname);

            prestament.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Author getAuthorById(String id){
        String query = "SELECT * FROM author WHERE id=?";

        try {
            connection = new DBContext().getConnection();
            prestament = connection.prepareStatement(query);
            prestament.setString(1,id);
            rs = prestament.executeQuery();
            while (rs.next()){
                return new Author( rs.getInt("id"),
                        rs.getString("name")
                );
            }


        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public void updateAuthor(String id, String authorname){
        String query="UPDATE author SET `name`=? WHERE id=?";
        try{
            connection = new DBContext().getConnection();
            prestament = connection.prepareStatement(query);

            prestament.setString(1,authorname);
            prestament.setString(2,id);
            prestament.executeUpdate();


        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void deleteAuthor (String id){
        String query = "DELETE FROM author WHERE id=?";
        try {
            connection = new DBContext().getConnection();
            prestament = connection.prepareStatement(query);
            prestament.setString(1,id);
            prestament.executeUpdate();


        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Author checkAuthor(String id){

        String query = "SELECT * FROM author WHERE id=?";
        try {
            connection = new DBContext().getConnection();
            prestament = connection.prepareStatement(query);
            prestament.setString(1,id);
            rs = prestament.executeQuery();

            while (rs.next()){
                return new Author(rs.getInt("id"),

                        rs.getString("name") ) ;
            }


        } catch (Exception e) {
            e.printStackTrace();
        }


        return null;

    }
    public List<Author> searchByName(String key) {
        List<Author> list = new ArrayList<>();
        String query = "SELECT * FROM author WHERE `name` LIKE ?";
        try {
            connection = new DBContext().getConnection();
            prestament = connection.prepareStatement(query);
            prestament.setString(1,"%"+key+"%");
            rs = prestament.executeQuery();


            while (rs.next()){
                list.add(new Author(rs.getInt("id"), rs.getString("name")));
            }


        } catch (Exception e) {
            e.printStackTrace();
        }


        return list;

    }

}
