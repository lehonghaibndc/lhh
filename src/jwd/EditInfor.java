package jwd;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;

@WebServlet(name = "EditInfor", urlPatterns = {"/EditInfor"})
public class EditInfor extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String nameuser=request.getParameter("nameuser");
        String fullname=request.getParameter("fullname");
        String datetime=request.getParameter("datetime");
        String id =request.getParameter("id");
        String avatar=request.getParameter("avatar");
        String numphone=request.getParameter("numphone");
        String position=request.getParameter("position1");
        String gmail=request.getParameter("gmail");
        Connection c=null;
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/bigweb";
            String username="root";
            String password="conmatto";
            c= DriverManager.getConnection(url,username,password);
            String sql1="update inforacc set FullName=?,ID=?,Class=?,DateTime=?,NumPhone=?,Avatar=?,Gmail=? where NameUser=?";
            PreparedStatement p=c.prepareStatement(sql1);
            p.setString(1,fullname);
            p.setString(2,id);
            p.setString(3, position);
            p.setString(4,datetime);
            p.setString(5,numphone);
            p.setString(6,avatar);
            p.setString(7,gmail);
            p.setString(8,nameuser);
            p.executeUpdate();

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e)
        {
            e.printStackTrace();
        } finally {
            try {
                if (c!=null)
                    c.close();
            }
            catch (SQLException e)
            {
                e.printStackTrace();
            }
        }
        response.sendRedirect("guestbook");

    }
}
