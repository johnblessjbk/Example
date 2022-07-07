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
  height: 620px;
  border: 1px solid #9C9C9C;
  background-color: #EAEAEA;
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
        <h3 class="text-center text-white pt-5"></h3>
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form id="login-form" class="form" action="" method="post">
                            <h3 class="text-center text-info">Sing Up</h3>
                             <div class="form-group">
                                <label for="username" class="text-info">Name</label><br>
                                <input type="text" name="name" id="username" class="form-control" required="">
                            </div>
                             <div class="form-group">
                                <label for="username" class="text-info">Username:</label><br>
                                <input type="email" name="email" id="username" class="form-control" required="">
                            </div>
                            <div class="form-group">
                                <label for="username" class="text-info">Phone</label><br>
                                <input type="number" name="phone" id="username" class="form-control" required="" maxlength="10">
                            </div>
                               <div class="form-group">
                                <label for="password" class="text-info">Address</label><br>
                                <input type="text" name="addr" id="password" class="form-control" required="">
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-info">Password:</label><br>
                                <input type="password" name="pass" id="password" class="form-control" required="">
                            </div>
                            <div class="form-group">
                                <label for="remember-me" class="text-info"></label><br>
                                <input type="submit" name="submit" class="btn btn-info btn-md" value="submit">
                            </div>
                            <div id="register-link" class="text-right">
                                <a href="login.jsp" class="text-info">Login Here</a>
                            </div>
                        </form>
                        <%

                    try {
                        if (request.getParameter("submit") != null) {
                            // String fn=request.getParameter("fname");
                            dbconnection con = new dbconnection();
                            String fn = request.getParameter("name");
                            String sn = request.getParameter("email");
                            String aa = request.getParameter("phone");
                            String bb = request.getParameter("addr");
                             String qq = request.getParameter("pass");
                            String qry = "insert into cusregister(name,email,phone,addr,pass)values('" + fn + "','"+sn+"','" + aa + "','" + bb + "','" + qq + "')";
                            String q = "insert into login(name,pass,status,type,uid)values('" + sn + "','" + qq + "','user','1',(select max(crid)from cusregister))";
                            System.out.println("qry::" + qry);
                            int j = con.putData(qry);
                            int jj = con.putData(q);
                            if ((j > 0) && (jj > 0)) {
                %>
                <script>alert("Register Success");
                    window.location = 'login.jsp';</script>
                    <%    } else {
                    %>
                <script>alert("Register failed");
                    window.location = 'customer.jsp';</script>
                    <%
                                }
                            }
                        } catch (Exception e) {
                            out.println(e);
                        }

                    %>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
