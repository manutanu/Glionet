
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;


public class Upload_FeeStructure extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
     String sem=request.getParameter("sem");
     System.out.println(sem+"csss");
        boolean isMultipart;
    String filePath="C:\\Users\\mjy\\Documents\\NetBeansProjects\\Glizonet\\web\\FEESTRUCTURE\\";
    int maxFileSize = 648818*100;
    int maxMemSize = 1000 * 1024;
    File file ;

          // Check that we have a file upload request
      isMultipart = ServletFileUpload.isMultipartContent(request);
      response.setContentType("text/html");
      
      if( !isMultipart ){
     out.println("<h4><center>FILE IS NOT UPLOADED</center></h4>");
         return;
      }
      DiskFileItemFactory factory = new DiskFileItemFactory();
      // maximum size that will be stored in memory
      factory.setSizeThreshold(maxMemSize);
      // Location to save data that is larger than maxMemSize.
      factory.setRepository(new File("C:\\Users\\mjy\\Documents\\NetBeansProjects\\Glizonet\\web\\FEESTRUCTURE"));

      // Create a new file upload handler
      ServletFileUpload upload = new ServletFileUpload(factory);
      // maximum file size to be uploaded.
      upload.setSizeMax( maxFileSize );

      try{ 
      // Parse the request to get file items.
      List fileItems = upload.parseRequest(request);
	
      // Process the uploaded file items
      Iterator i = fileItems.iterator();

      out.println("<html>");
      out.println("<head>");
      out.println("<title>Servlet upload</title>");  
      out.println("</head>");
      out.println("<body>");
      while ( i.hasNext () ) 
      {
         FileItem fi = (FileItem)i.next();
         if ( !fi.isFormField () )	
         {
            // Get the uploaded file parameters
            String fieldName = fi.getFieldName();
            String fileName = fi.getName();
            String contentType = fi.getContentType();
            boolean isInMemory = fi.isInMemory();
            long sizeInBytes = fi.getSize();
            // Write the file
            if( fileName.lastIndexOf("\\") >= 0 ){
               file = new File( filePath + 
               fileName.substring( fileName.lastIndexOf("\\"))) ;
            }else{
               file = new File( filePath + 
               fileName.substring(fileName.lastIndexOf("\\")+1)) ;
            }
            fi.write( file ) ;
            try{
            String id="";
        int count=0;
        Cookie[] ck=request.getCookies();
         Cookie c;
         for(Cookie ck1:ck){
         String cn=ck1.getName();
         System.out.println(cn);
         if(cn.equals("admincookie")){
         id=ck1.getValue();
             count++;                
         }
       if(count!=0){
       // String dt=new Date().toString();
      System.out.println(id+ " k  "+fileName+"  ");
        
                      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con=DriverManager.getConnection("jdbc:odbc:Glizo","sa","Slietians"); 
             System.out.println("1dd");
     
            Statement stat=con.createStatement();
           System.out.println("2dd");
            stat.executeUpdate("update FEESTRUCTURE SET LOCA='"+fileName+"' where SEMESTER='SEM1'");
            System.out.println("3dd");
            response.sendRedirect("Successadmin.jsp");
            out.println("Uploaded Filename: " + fileName + "<br>");
       }else{
           response.sendRedirect("ERROR.jsp");
       }
         }
            
            }catch(Exception e){
            out.println(e);
            
            }
         }
      }
      out.println("</body>");
      out.println("</html>");
   }catch(Exception ex) {
       out.println(ex);
   }
        
    
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
