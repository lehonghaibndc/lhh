package jwd;

import jwd_models.GuestBookNewEntry;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

@WebServlet(name = "GuestBookNew",urlPatterns = {"/GuestBookNew"})
public class GuestBookNew extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nameNew=request.getParameter("new");
        Connection c=null;
        GuestBookNewEntry entry=null;
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/bigweb";
            String username="root";
            String password="conmatto";
            c= DriverManager.getConnection(url,username,password);
            String sql="SELECT * FROM neww WHERE NamePage=?";
            PreparedStatement p=c.prepareStatement(sql);
            p.setString(1,nameNew);
            ResultSet rs=p.executeQuery();
            rs.next();
            entry = new GuestBookNewEntry(rs.getString("NamePage"),rs.getString("Content"));

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
        request.setAttribute("entry",entry);
        request.getRequestDispatcher("/WEB-INF/ContentNew.jsp").forward(request,response);

    }
}
