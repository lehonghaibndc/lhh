package Download;

import jwd_models.GuestBookNewEntry;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.*;

@WebServlet(name = "DownloadTR4",urlPatterns = {"/DownloadTR4"})
public class DownloadTR4 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String ID="PT004";
        String link=null;
        Connection c=null;

        link=request.getParameter("ID");
        response.setContentType("APPLICATION/OCTET-STREAM");
        response.setHeader("Content-Disposition","attachment;filename=downloadfile");
        File file= new File("D:\\web\\Final"+link);
        FileInputStream fis = new FileInputStream(file);
        ServletOutputStream out = response.getOutputStream();
        byte[] outputByte = new byte[4096];
        while(fis.read(outputByte, 0, 4096) != -1)
        {
            out.write(outputByte, 0, 4096);
        }

        fis.close();
        out.flush();
        out.close();
    }
}
