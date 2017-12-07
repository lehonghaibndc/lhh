package jwd;

import jwd_models.GuestBookAccEntry;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "GuestBookAccSql", urlPatterns = {"/guestbook"})
public class GuestBookAccSql extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<GuestBookAccEntry> entriesAcc = new ArrayList<GuestBookAccEntry>();
        Connection c=null;
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/bigweb";
            String username="root";
            String password="conmatto";
            c= DriverManager.getConnection(url,username,password);
            Statement stmt=c.createStatement();
            ResultSet rsAcc=stmt.executeQuery("SELECT*FROM Accounts,inforacc where Accounts.NameUser=inforacc.NameUser and Accounts.Status=1;");
            while (rsAcc.next())
            {
                GuestBookAccEntry entry=new GuestBookAccEntry(
                        rsAcc.getString("NameUser"),
                        rsAcc.getString("Class"),
                        rsAcc.getString("FullName"),
                        rsAcc.getDate("DateTime"),
                        rsAcc.getString("ID"),
                        rsAcc.getString("NumPhone"),
                        rsAcc.getString("Avatar"),
                        rsAcc.getString("Gmail") );
                entriesAcc.add(entry);
            }
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
        request.setAttribute("entriesAcc",entriesAcc);
        request.getRequestDispatcher("Admin.jsp").forward(request,response);
    }
}
