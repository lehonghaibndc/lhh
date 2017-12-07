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

@WebServlet(name = "UpdateScore",urlPatterns = {"/UpdateScore"})
public class UpdateScore extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String namestu=request.getParameter("userstu");
        String nametopic=request.getParameter("nametopic");
        String a=request.getParameter("score");
        Float score=Float.parseFloat(a);
        int finish=1;
        Connection c=null;
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/bigweb";
            String username="root";
            String password="conmatto";
            c= DriverManager.getConnection(url,username,password);

                String sql = "UPDATE Topic SET Topic.Score=?,Topic.Finish=? WHERE Topic.NameStu=? and Topic.NameTopic=?";
                PreparedStatement p = c.prepareStatement(sql);
                p.setFloat(1,score);
                p.setInt(2, finish);
                p.setString(3, namestu);
                p.setString(4,nametopic);
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
        response.sendRedirect("Teacher.jsp");
    }
}
