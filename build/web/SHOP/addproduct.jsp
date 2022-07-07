<%@page import="java.util.Vector"%>
<%@page import="java.util.Iterator"%>
<%@page import="Connection.dbconnection"%>
<jsp:include page="ShopHead.jsp"></jsp:include>


<section class="contact-w3ls">
        <div class="container">
            <div class="wthree-heading">
                <h2 class="w3l_header">Add Product <sub>Shop</sub></h2>
                <p class="quia">New Product Items</p>
            </div>
            <div class="con-top">
                <div class="col-lg-6 col-md-6 col-sm-6 contact-w3-agile2" data-aos="flip-left">
                    <div class="contact-agileits">
        <form name="frm" action="fileuploadaction.jsp" method="post" enctype="multipart/form-data">
            
  <div class="control-group form-group">
                                <div class="controls">
                                    <label class="contact-p1">Shop Name:</label> 
                                    
                                    <%                 String userid=(String)session.getAttribute("loguid");
%>
                                    
<input type="hidden" class="form-control" name="mallid" id="name" value="<%=userid%>">

                            <select name="sname" class="form-control" id="newrate" style="width:100%; height: 50px">

                                <%
                                    dbconnection con = new dbconnection();
                                    String qry = "select *from addshop";
                                    Iterator io = con.getData(qry).iterator();
                                    while (io.hasNext()) {
                                        Vector v = (Vector) io.next();
                                %>

                                <option value="<%=v.get(1)%>"><%=v.get(1)%></option>
                                <%}%> 
                            </select></div></div><br>
            
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label class="contact-p1">Product Name:</label> 
                                    <input type="text" class="form-control" name="pname" id="name" Placeholder=" " required="">
                                    <p class="help-block"></p>
                                </div>
                            </div>	
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label class="contact-p1">Quantity</label>
                                    <input type="number" class="form-control" name="qty" id="phone" Placeholder=" " required="">
                                    <p class="help-block"></p>
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label class="contact-p1">Price</label>
                                    <input type="number" class="form-control" name="price" id="email" Placeholder=" " required="" maxlength="10" minlength="10">
                                    <p class="help-block"></p>
                                </div>
                            </div>
                            
                         
                           
                <div class="control-group form-group">
                                <div class="controls">
                                    <label class="contact-p1">Photo</label>
                                                                <input type="file" name="image" class=" form-control" required="" multiple/><br>
                                    <p class="help-block"></p>
                                </div>
                            </div>
                                    <div id="success"></div>
                            <!-- For success/fail messages -->
                            <button type="submit" class="btn btn-primary">Add Product</button>	
                        </form>                                                                                                
                    </div>
                </div>

                <div class="clearfix"></div>
            </div>
        </div>
    </section>


<jsp:include page="../footer.jsp"></jsp:include>