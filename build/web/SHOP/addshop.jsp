<%@page import="Connection.dbconnection"%>
<jsp:include page="ShopHead.jsp"></jsp:include>


<section class="contact-w3ls">
        <div class="container">
            <div class="wthree-heading">
                <h2 class="w3l_header">Add New Shop <sub>Shop</sub></h2>
                <p class="quia">New Shop Details</p>
            </div>
            <div class="con-top">
                <div class="col-lg-6 col-md-6 col-sm-6 contact-w3-agile2" data-aos="flip-left">
                    <div class="contact-agileits">
        <form>
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label class="contact-p1">Shop Name:</label> 
                                    <input type="text" class="form-control" name="name" id="name" Placeholder=" " required="">
                                    <p class="help-block"></p>
                                </div>
                            </div>	
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label class="contact-p1">Email</label>
                                    <input type="email" class="form-control" name="email" id="phone" Placeholder=" " required="">
                                    <p class="help-block"></p>
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label class="contact-p1">Address</label>
                                    <input type="text" class="form-control" name="addr" id="email" Placeholder=" " required="">
                                    <p class="help-block"></p>
                                </div>
                            </div>
                            
                         
                         
                                    <div id="success"></div>
                            <!-- For success/fail messages -->
                            <button type="submit" class="btn btn-primary" name="submit">Add Shop</button>	
                        </form>
                        
                            <%
                    try {
                        if (request.getParameter("submit") != null) {
                            
                 String userid=(String)session.getAttribute("loguid");
                            dbconnection con = new dbconnection();
                            String fn = request.getParameter("name");
                            String sn = request.getParameter("email");
                            String bb = request.getParameter("addr");
                            String qry = "insert into addshop(name,email,addr,mallid)values('" + fn + "','"+sn+"','" + bb + "','" + userid + "')";
                            System.out.println("qry::" + qry);
                            int j = con.putData(qry);
                            if (j > 0) {
                %>
                <script>alert("add Success");
                    window.location = 'addshop.jsp';</script>
                    <%    } else {
                    %>
                <script>alert("add failed");
                    window.location = 'addshop.jsp';</script>
                    <%
                                }
                            }
                        } catch (Exception e) {
                            out.println(e);
                        }

                    %>
                        
                        
                        
                    </div>
                </div>

                <div class="clearfix"></div>
            </div>
        </div>
    </section>


<jsp:include page="../footer.jsp"></jsp:include>