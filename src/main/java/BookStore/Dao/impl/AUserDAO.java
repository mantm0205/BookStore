package BookStore.Dao.impl;

import BookStore.Model.Category;
import BookStore.Model.Product;
import BookStore.Model.Publisher;
import BookStore.Model.User;
import BookStore.config.ConnectionPool;
import BookStore.config.DBContext;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class AUserDAO {

    Connection connection = null;
    PreparedStatement prestament = null;
    ResultSet rs = null;

    public List<User> getAllUser() {
        List<User> list = new ArrayList<>();
        String query = "SELECT * FROM users";
        try {
            connection = new DBContext().getConnection();
            prestament = connection.prepareStatement(query);
            rs = prestament.executeQuery();


            while (rs.next()) {
                list.add( new User(rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("fullname"),
                        rs.getString("email"),
                        rs.getString("address"),
                        rs.getString("sex"),
                        rs.getString("phone"),
                        rs.getInt("status")
//                        rs.getInt("blog_id")

                        ));
            }


        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<User> getListPage(List<User> list,int start, int end){
        ArrayList<User> arr = new ArrayList<>();
        for(int i = start ; i< end;i++) {
            arr.add(list.get(i));
        }
        return arr;
    }


    public void insertUser(String username,String fullname, String password,String email,String address,String sex,String phone){

        String query = "INSERT INTO users(username,fullname,`password`,email,address,sex,phone) VALUES (?,?,?,?,?,?,?)";
        try {
            connection = new DBContext().getConnection();
            prestament = connection.prepareStatement(query);
            prestament.setString(1,username);
            prestament.setString(2,fullname);
            prestament.setString(3,password);
            prestament.setString(4,email);
            prestament.setString(5,address);
            prestament.setString(6,sex);
            prestament.setString(7,phone);

            prestament.executeUpdate();



        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int countUser(){
        String query = "SELECT count(*) FROM users";
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

    public User checkUser(String username){

        String query = "SELECT * FROM users WHERE username=?";
        try {
            connection = new DBContext().getConnection();
            prestament = connection.prepareStatement(query);
            prestament.setString(1,username);
            rs = prestament.executeQuery();

            while (rs.next()){
                return new User(rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("fullname"),
                        rs.getString("email"),
                        rs.getString("address"),
                        rs.getString("sex"),
                        rs.getString("phone"),
                        rs.getInt("status"),
                        rs.getInt("blog_id")

                );
            }


        } catch (Exception e) {
            e.printStackTrace();
        }


        return null;

    }





    public static void main(String[] args) {
        AUserDAO dao = new AUserDAO();
        List<User> list = dao.getAllUser();
        for(User o :list){
            System.out.println(o);
    }

}
    }
