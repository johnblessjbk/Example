<%@page import="java.util.Vector"%>
<%@page import="java.util.Iterator"%>
<%@page import="Connection.dbconnection"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<style>
    body {
  margin: 0;
  padding: 0;
  background-image: url('banner-1.jpg');
}
#login .container #login-row #login-column #login-box {
  margin-top: 120px;
  max-width: 600px;
  height: 320px;
  border: 1px solid #9C9C9C;
  background-color: #EAEAEA;
  box-shadow:  10px 10px 10px 10px #111;
}
#login .container #login-row #login-column #login-box #login-form {
  padding: 20px;
}
#login .container #login-row #login-column #login-box #login-form #register-link {
  margin-top: -85px;
}
</style>
<body>
    <div id="login">
        <h3 class="text-center text-white pt-5">Login form</h3>
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form id="login-form" class="form">
                            <h3 class="text-center text-info">Login</h3>
                            <div class="form-group">
                                <label for="username" class="text-info">Username:</label><br>
                                <input type="email" name="email" id="username" class="form-control" required="">
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-info">Password:</label><br>
                                <input type="text" name="pass" id="password" class="form-control" required="">
                            </div>
                            <div class="form-group">
                                <label for="remember-me" class="text-info"></label><br>
                                <input type="submit" name="submit" class="btn btn-info btn-md" value="submit">
                            </div>
                            <div id="register-link" class="text-right">
                                <a href="WebHome.jsp" class="text-info">Back</a>
                            </div>
                        </form>
                        
                        
                        <%

                    try {
                        if (request.getParameter("submit")!= null) {
                            // String fn=request.getParameter("fname");
                            dbconnection con = new dbconnection();
                            String fn = request.getParameter("email");
                            String sn = request.getParameter("pass");
                            String t = "admin";
                            String qry = "select name,pass,status,uid from login where name='" + fn + "' and pass='" + sn + "'";
                            System.out.println("qry::" + qry);

                            Iterator i = con.getData(qry).iterator();

                            while (i.hasNext()) {
                                System.out.println("cccccccccccc" + qry);

                                Vector v = (Vector) i.next();
                                String nam = v.get(0).toString();

                                String ty = v.get(2).toString();
                                String da = v.get(3).toString();
                                session.setAttribute("loguid", da);
                                session.setAttribute("namelogid", nam);


                        if (ty.equals("admin")) {
                %>
                <script>alert("login sucess");window.location = './ADMIN/AdminHome.jsp';</script>
                <%
                }
   else if (ty.equals("user")) {
                %>
                <script>alert("login sucess");window.location = './CUSTOMER/CustomerHome.jsp';</script>
                <%
                }
 else if (ty.equals("rent")) {
                %>
                <script>alert("login sucess");window.location = './RENT SHOP/RSHome.jsp';</script>
                <%
                }
 else if (ty.equals("shop")) {
                %>
                <script>alert("login sucess");window.location = './SHOP/ShopHome.jsp';</script>
                <%
                }
else{
                %>
                <script>alert("Registration failed");window.location = 'signin.jsp';</script>
                <%                                                  }
                         }
                        }
                    }catch (Exception e) {
                       out.println(e);
                    }

                %>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
