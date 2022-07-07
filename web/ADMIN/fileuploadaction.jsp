<%@page import="Connection.dbconnection"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.fileupload.FileUploadException"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>

<%

    FileItem f_item = null;
    String file_name = "";
    dbconnection con = new dbconnection();
    String sname = "", price = "", phone = "", url = "",quantity = "",pname="",da="",qty="",mname="",lattitude="",longittude="";
    boolean isMultipart = ServletFileUpload.isMultipartContent(request);
    System.out.println("111");
    if (isMultipart) {
        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        //declaring a list of form fields
        List items_list = null;
        //assigning fields to list 'items_list'
        try {
            items_list = upload.parseRequest(request);
        }catch (FileUploadException ex) {
            out.println(ex);
        }
        //declaring iterator
        Iterator itr = items_list.iterator();
        //iterating through the list 'items_list'
        if (itr.hasNext()) {
            //typecasting next element in items_list as fileitem
            f_item = (FileItem) itr.next();
            //checking if 'f_item' contains a formfield(common controls like textbox,dropdown,radio buttonetc)
            while (f_item.isFormField()) {
                //getting fieldname and value
                String field = f_item.getFieldName();
                String value = f_item.getString();
                   if (field.equalsIgnoreCase("mname")) {
                    mname = value;
                }
                if (field.equalsIgnoreCase("sname")) {
                    sname = value;
                }
                if (field.equalsIgnoreCase("price")) {
                    price = value;
                }
                if (field.equalsIgnoreCase("phone")) {
                    phone = value;
                }
                if (field.equalsIgnoreCase("url")) {
                    url = value;
                }
                if (field.equalsIgnoreCase("pname")) {
                    pname = value;
                }
                 if (field.equalsIgnoreCase("qty")) {
                    qty = value;
                }
                  if (field.equalsIgnoreCase("lattitude")) {
                    lattitude = value;
                }
                   if (field.equalsIgnoreCase("longittude")) {
                    longittude = value;
                }
                f_item = (FileItem) itr.next();
            }
            //else part does the image upload
            file_name = f_item.getName();
            //setting path to store image
            File proj_path = new File(config.getServletContext().getRealPath("/"));
            String file_path = proj_path.getParentFile().getParentFile().getPath() + "\\web\\assets\\images\\";
            //creating a file object
            File savedFile = new File(file_path + file_name);
            try {
                //writing the file object
                f_item.write(savedFile);
            } catch (Exception ex) {
                out.println(ex);
            }
        }
    }
    String userid = (String) session.getAttribute("regid");
    String insert = "INSERT INTO `mall`(mname,sname,price,phone,pname,qty,lattitude,longittude,photo)VALUES('" + mname + "','" + sname + "','" + price + "' ,'"+phone+"','"+pname+"','"+qty+"','"+lattitude+"','"+longittude+"','"+ file_name + "')";
    System.out.println(insert);
                                String q = "insert into login(name,pass,status,type,uid)values('" + sname + "','" + phone + "','shop','1',(select max(mid)from mall))";

    if ((con.putData(insert) > 0)&&(con.putData(q) > 0)) {
%>
<script>
    alert("New Product Added Successfully");
    window.location = "AddMAll.jsp";
</script>
<%
} else {
%>
<script>
    alert("Failed To Add Product");
    window.location = "AddMAll.jsp";
</script>
<%
    }
%>
