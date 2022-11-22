package BookStore.Dao.impl;

import BookStore.Model.Category;
import BookStore.Model.Publisher;
import BookStore.config.ConnectionPool;
import BookStore.config.DBContext;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class APublisherDao {

    Connection connection = null;
    PreparedStatement prestament = null;
    ResultSet rs = null;

//SELECT * FROM publisher

    public List<Publisher> getAllPublisher() {
        List<Publisher> list = new ArrayList<>();
        String query = "SELECT * FROM publisher";
        try {
            connection = new DBContext().getConnection();
            prestament = connection.prepareStatement(query);
            rs = prestament.executeQuery();


            while (rs.next()) {
                list.add( new Publisher(rs.getInt("id"),
                        rs.getString("name")));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public void deletePublisher (String id){
        String query = "DELETE FROM publisher WHERE id=?";
        try {
            connection = new DBContext().getConnection();
            prestament = connection.prepareStatement(query);
            prestament.setString(1,id);
            prestament.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void insertPublisher(String id,String publishername){

        String query = "INSERT INTO  publisher (id,name) VALUES(?,?)";
        try {
            connection = ConnectionPool.getConnection("query");
            prestament = connection.prepareStatement(query);
            prestament.setString(1,id);
            prestament.setString(2,publishername);

            prestament.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public Publisher getPublisherById(String id){
        String query = "SELECT * FROM publisher WHERE id=?";

        try {
            connection = new DBContext().getConnection();
            prestament = connection.prepareStatement(query);
            prestament.setString(1,id);
            rs = prestament.executeQuery();
            while (rs.next()){
                return new Publisher( rs.getInt("id"),
                        rs.getString("name")
                );
            }


        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public void updatePublisher(String id, String publishername){
        String query="UPDATE publisher SET `name`=? WHERE id=?";
        try{
            connection = new DBContext().getConnection();
            prestament = connection.prepareStatement(query);

            prestament.setString(1,publishername);
            prestament.setString(2,id);
            prestament.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<Publisher> getListPage(List<Publisher> list,int start, int end){
        ArrayList<Publisher> arr = new ArrayList<>();
        for(int i = start ; i< end;i++) {
            arr.add(list.get(i));
        }
        return arr;
    }

    public int countPublisher(){
        String query = "SELECT count(*) FROM publisher";
        try {
            connection = new DBContext().getConnection();
            prestament = connection.prepareStatement(query);
            rs = prestament.executeQuery();
            while (rs.next()){
                return rs.getInt(1);
            }


        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public Publisher checkCategory(String id){

        String query = "SELECT * FROM publisher WHERE id=?";
        try {
            connection = new DBContext().getConnection();
            prestament = connection.prepareStatement(query);
            prestament.setString(1,id);
            rs = prestament.executeQuery();

            while (rs.next()){
                return new Publisher(rs.getInt("id"),

                        rs.getString("name") ) ;
            }


        } catch (Exception e) {
            e.printStackTrace();
        }


        return null;

    }
}
