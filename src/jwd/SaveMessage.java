package jwd;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet(name = "SaveMessage",urlPatterns = {"/SaveMessage"})
public class SaveMessage extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nametea=request.getParameter("nametea");
        String nameuser=request.getParameter("nameuser");
        String content=request.getParameter("content");
        SimpleDateFormat formatterday = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat formattertime=new SimpleDateFormat("HH:mm:ss");
        Date date = new Date();
        String day=formatterday.format(date);
        String time=formatterday.format(date);
        Connection c=null;
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/bigweb";
            String username="root";
            String password="conmatto";
            c= DriverManager.getConnection(url,username,password);

            String sql = "INSERT INTO TeacherSend VALUES (?,?,?,?)";
            PreparedStatement p = c.prepareStatement(sql);
            p.setString(1,nameuser);
            p.setString(2,nametea);
            p.setString(3,content);
            p.setString(4,day);
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
