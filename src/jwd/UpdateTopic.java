package jwd;

import com.oreilly.servlet.MultipartRequest;

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

@WebServlet(name = "UpdateTopic",urlPatterns = {"/UpdateTopic"})
public class UpdateTopic extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MultipartRequest m=new MultipartRequest(request, "D:\\web\\Final\\web\\Topic\\");
        String nameFileTopic=m.getFilesystemName("link");
        String nameTopic=m.getParameter("nametopic");
        String nameuser=m.getParameter("nameuser");
        Connection c=null;
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/bigweb";
            String username="root";
            String password="conmatto";
            c= DriverManager.getConnection(url,username,password);
            String sql = "UPDATE Topic set Topic.Introduction=? WHERE Topic.NameUser=?";
            PreparedStatement p = c.prepareStatement(sql);
            p.setString(1,"\\web\\Topic\\"+nameFileTopic);
            p.setString(2,nameuser);
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

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
