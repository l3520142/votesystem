/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Administrator
 */
@MultipartConfig
@WebServlet("/UploadImageServlet")
public class UploadImageServlet extends HttpServlet {
private static final long serialVersionUID = 1L;

    public UploadImageServlet() {
        super();
    }

@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Part part = request.getPart("photo");
        String filename = getFilename(part);
        writeTo(filename, part);
}
private String getFilename(Part part) {
        String header = part.getHeader("Content-Disposition");
        String filename = header.substring(header.indexOf("filename=\"") + 10,
                header.lastIndexOf("\""));
        if(filename.indexOf("\\")>=0)
            filename=filename.substring(filename.lastIndexOf("\\")+1,filename.length());
        return filename;
    }
    private void writeTo(String filename, Part part) throws IOException,
            FileNotFoundException {
        InputStream in = part.getInputStream();
        OutputStream out = new FileOutputStream("c:/temp/" + filename);
        byte[] buffer = new byte[1024];
        int length = -1;
        while ((length = in.read(buffer)) != -1) {
            out.write(buffer, 0, length);
        }
        in.close();
        out.close();
    }
}