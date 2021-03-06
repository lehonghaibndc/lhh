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

@WebServlet(name = "AddTopic",urlPatterns = {"/AddTopic"})
public class AddTopic extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String namestu=request.getParameter("namestu");
        String nametopic=request.getParameter("nametopic");
        String nameuser=request.getParameter("nameuser");
        String nametea=request.getParameter("nametea");
        String id="";
        String link="";
        float score= 0;
        int finish=0;
        Connection c=null;
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/bigweb";
            String username="root";
            String password="conmatto";
            c= DriverManager.getConnection(url,username,password);
            String sql = "INSERT into Topic VALUES (?,?,?,?,?,?,?,?)";
            PreparedStatement p = c.prepareStatement(sql);
            p.setString(1,id);
            p.setString(2,nameuser);
            p.setString(3,namestu);
            p.setString(4,nametopic);
            p.setString(5,nametea);
            p.setString(6,link);
            p.setFloat(7,score);
            p.setInt(8,finish);
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
        response.sendRedirect("Student.jsp");
    }
}
