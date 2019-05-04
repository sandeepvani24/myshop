/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Mohit
 */
public class AddCategoryController extends HttpServlet {
    
    private boolean isMultipart;
    private String filePath;
    private int maxFileSize = 150 * 1024;
    private int maxMemSize = 10 * 1024;
    private File file ;
    
    public void init( ){
        // Get the file location where it would be stored.
        filePath = getServletContext().getInitParameter("file-upload"); 
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/add_category.jsp");
        dispatcher.forward(request, response);
        
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Check that we have a file upload request
        isMultipart = ServletFileUpload.isMultipartContent(request);    
        
        DiskFileItemFactory factory = new DiskFileItemFactory();
   
        // maximum size that will be stored in memory
        factory.setSizeThreshold(maxMemSize);
   
        // Location to save data that is larger than maxMemSize.
        factory.setRepository(new File("f:\\temp"));

        // Create a new file upload handler
        ServletFileUpload upload = new ServletFileUpload(factory);
   
        // maximum file size to be uploaded.
        upload.setSizeMax( maxFileSize );

        try { 
            // Parse the request to get file items.
            List fileItems = upload.parseRequest(request);
	
            // Process the uploaded file items
            Iterator i = fileItems.iterator();
   
            while ( i.hasNext () ) {
                
                FileItem fi = (FileItem)i.next();
                if ( !fi.isFormField () ) {
                    // Get the uploaded file parameters
                   
                    String fieldName = fi.getFieldName();
                    String fileName = fi.getName();
                    String contentType = fi.getContentType();
                    boolean isInMemory = fi.isInMemory();
                    long sizeInBytes = fi.getSize();

                    // Write the file
                    if( fileName.lastIndexOf("\\") >= 0 ) {
                        file = new File( filePath + fileName.substring( fileName.lastIndexOf("\\"))) ;
                    } else {
                        file = new File( filePath + fileName.substring(fileName.lastIndexOf("\\")+1)) ;
                    }
                    fi.write( file ) ;                   
                }
            }
            
        } catch(Exception ex) {
            System.out.println(ex);
        }
    }
}
