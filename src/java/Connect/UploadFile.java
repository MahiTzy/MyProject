/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Connect;

import dbpack.DbManager;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
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
 * @author 91982
 */
@MultipartConfig
@WebServlet(name = "UploadFile", urlPatterns = {"/UploadFile"})
public class UploadFile extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        int id = Integer.parseInt(request.getParameter("id"));
        Part filePart = request.getPart("profilePictureFile");
        if (filePart == null || filePart.getSubmittedFileName() == null || filePart.getSubmittedFileName().isEmpty()) {
            session.setAttribute("error", "Please select an image!");
            response.sendRedirect("studentZone/profile.jsp");
            return;
        }
        String file = filePart.getSubmittedFileName();
        InputStream fileData = filePart.getInputStream();
        File uploadDir = new File(request.getRealPath("/uploadimage"));
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }
        File newFile = new File(uploadDir, file);
        if (!newFile.exists()) {
            Files.copy(fileData, newFile.toPath());
        }

        session.setAttribute("profile", file);
        DbManager db = new DbManager();
        String query = "update login set profile='" + file + "' where userid='" + id + "'";
        boolean res = db.insertUpdateDelete(query);
        if (res == true) {
            response.sendRedirect("studentZone/profile.jsp");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
