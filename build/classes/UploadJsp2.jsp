
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*,java.sql.*" %>

<%!String fname; %>
<%!String values[]=new String[8]; %>
<%!int counter=0; %>
<%
String s1=request.getParameter("t1");

   File file =null;
   int maxFileSize = 5000 * 1024;
   int maxMemSize = 5000 * 1024;
   ServletContext context = pageContext.getServletContext();
   String filePath = context.getInitParameter("file-upload");

   // Verify the content type
   String contentType = request.getContentType();
   if ((contentType.indexOf("multipart/form-data") >= 0)) {

      DiskFileItemFactory factory = new DiskFileItemFactory();
      // maximum size that will be stored in memory
      factory.setSizeThreshold(maxMemSize);
      // Location to save data that is larger than maxMemSize.
      factory.setRepository(new File("c:\\temp"));

      // Create a new file upload handler
      ServletFileUpload upload = new ServletFileUpload(factory);
      // ma   ximum file size to be uploaded.
      upload.setSizeMax( maxFileSize );
      try{ 
         // Parse the request to get file items.
         List fileItems = upload.parseRequest(request);

         // Process the uploaded file items
         Iterator i = fileItems.iterator();

         out.println("<html>");
         out.println("<head>");
         out.println("<title>JSP File upload</title>");  
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
            out.println("Uploaded Filename: " + filePath + 
            fileName + "<br>");
            fname=filePath+fileName;
            System.out.println("File Name : "+fname);
            
            }
            if(fi.isFormField())
            {
            	values[counter]=fi.getString();
            	counter++;
            	
            }
         }
         
         counter=0;
         try
         {
        	 Class.forName("oracle.jdbc.driver.OracleDriver");
        	 Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:system","system","system");
        	 System.out.println("Connection Created");
        	 PreparedStatement ps=conn.prepareStatement("insert into myimg values(?)");
        	 FileInputStream fin=new FileInputStream(file);
        	 
        	 
 
        	 
        	 ps.setString(1,fname);
        	// ps.setString(2,"1");
        	 

        	 
        	int ii=ps.executeUpdate();
        	if(ii!=0)
        	{
        		 out.println("Insertted Succesfully!");
       
        	}
        	else
        	{
        		out.println("Not Inserted");
        	}
        	
        		 
        	 
         }
         catch(Exception e)
         {
        	e.printStackTrace();
         }
         
         
         out.println("<form action='UploadJsp3.jsp'><input type='Submit' value='Back'></form></body>");
         out.println("</html>");
      }catch(Exception ex) {
         System.out.println(ex);
      }
   }else{
      out.println("<html>");
      out.println("<head>");
      out.println("<title>Servlet upload</title>");  
      out.println("</head>");
      out.println("<body>");
      out.println("<p>No file uploaded</p>"); 
      out.println("</body>");
      out.println("</html>");
   }
%>