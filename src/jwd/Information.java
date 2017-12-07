package jwd;

import jwd_models.GuestBookAccEntry;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

@WebServlet(name = "Information",urlPatterns = {"/Information"})
public class Information extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String NameUser = request.getParameter("nameuser");
        GuestBookAccEntry entry=null;
        Connection c = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/bigweb?useSSL=false";
            String username = "root";
            String password = "conmatto";
            c = DriverManager.getConnection(url, username, password);
            String sql = "SELECT*FROM Accounts,inforacc where Accounts.NameUser=inforacc.NameUser AND Accounts.NameUser=?";
            PreparedStatement p = c.prepareStatement(sql);
            p.setString(1, NameUser);
            ResultSet rs= p.executeQuery();
            rs.next();
            entry = new GuestBookAccEntry(
                    rs.getString("NameUser"),
                    rs.getString("Class"),
                    rs.getString("FullName"),
                    rs.getDate("DateTime"),
                    rs.getString("ID"),
                    rs.getString("NumPhone"),
                    rs.getString("Avatar"),
                    rs.getString("Gmail"));
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (c != null)
                    c.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }

        }
        request.setAttribute("entry",entry);
        request.getRequestDispatcher("/WEB-INF/Information.jsp").forward(request,response);
    }
}
