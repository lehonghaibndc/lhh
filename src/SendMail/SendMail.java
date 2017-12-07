package SendMail;

import com.sun.org.apache.bcel.internal.classfile.Code;
import com.sun.org.apache.xpath.internal.operations.Bool;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

@WebServlet("/SendMail")
public class SendMail extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String User=request.getParameter("nameuser");
        String Gmail=request.getParameter("gmail");
        String Id=request.getParameter("id");
        String Phone=request.getParameter("phone");
        String Date=request.getParameter("date");
        String Name=request.getParameter("name");
        String Pass=request.getParameter("pass");
        int Status=0;
        String Clas="Stu";
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
            String sql="insert into Accounts (NameUser,Pass,Class,Code,Status) values (?,?,?,?,?)";
            PreparedStatement p=c.prepareStatement(sql);
            p.setString(1,User);
            p.setString(2,Pass);
            p.setString(3,Clas);
            p.setString(4, Code);
            p.setInt(5,Status);
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


        GuestBookInforEntry entry=new GuestBookInforEntry(
                User,Gmail,Id,Phone,Date,Name,Pass,Code
        );
        try {
            Mail.send("topic.manager.center","conmatto",Gmail,"Admin",Code);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        request.setAttribute("entry",entry);
        request.getRequestDispatcher("confirm.jsp").forward(request,response);

    }
}
