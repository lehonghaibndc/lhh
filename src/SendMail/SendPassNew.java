package SendMail;

import javax.mail.MessagingException;
import javax.naming.Name;
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

@WebServlet(name = "SendPassNew",urlPatterns = {"/SendPassNew"})
public class SendPassNew extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String User=request.getParameter("User");
        String Gmail=request.getParameter("Gmail");
        String Pos=request.getParameter("position1");
        RandomString rns=new RandomString();
        String Code=rns.generateRandomString();
        Connection c=null;
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/bigweb?useSSL=false";
            String username="root";
            String password="conmatto";
            c= DriverManager.getConnection(url,username,password);
            String sql="UPDATE accounts set accounts.Pass=? WHERE accounts.NameUser=?";
            PreparedStatement p=c.prepareStatement(sql);
            p.setString(1,Code);
            p.setString(2, User);
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



        try {
            Mail.send("topic.manager.center","conmatto",Gmail,"Admin",Code);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        response.sendRedirect("RePass.jsp");
    }
}
