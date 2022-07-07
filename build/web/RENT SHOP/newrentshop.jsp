<%@page import="java.util.Vector"%>
<%@page import="java.util.Iterator"%>
<%@page import="Connection.dbconnection"%>
<jsp:include page="RShopHead.jsp"></jsp:include>


    <section class="contact-w3ls">
        <div class="container">
            <div class="wthree-heading">
                <h2 class="w3l_header">Add Rent <sub>Shop</sub></h2>
                <p class="quia">New Rent Shops </p>
            </div>
            <div class="con-top">
                <div class="col-lg-6 col-md-6 col-sm-6 contact-w3-agile2" data-aos="flip-left">
                    <div class="contact-agileits">
                        <form name="frm" action="fileuploadaction.jsp" method="post" enctype="multipart/form-data">

                            <div class="control-group form-group">
                                <div class="controls">

                                <%
                                    String userid = (String) session.getAttribute("loguid");
                                %>

                                <input type="hidden" class="form-control" name="shopid" id="name" value="<%=userid%>">
                                <div class="control-group form-group">
                                    <div class="controls">
                                        <label class="contact-p1">Rent Name:</label> 
                                        <input type="text" class="form-control" name="rname" id="name" Placeholder=" " required="">
                                        <p class="help-block"></p>
                                    </div>
                                </div>	
                              
                                <div class="control-group form-group">
                                    <div class="controls">
                                        <label class="contact-p1">Contact  </label>
                                        <input type="text" class="form-control" name="phone" id="sqr" Placeholder=" " required="" maxlength="10" minlength="10">
                                        <p class="help-block"></p>
                                    </div>
                                </div>
                                  <div class="control-group form-group">
                                    <div class="controls">
                                        <label class="contact-p1">square feet </label>
                                        <input type="text" class="form-control" name="sqr" id="sqr" Placeholder=" " required="">
                                        <p class="help-block"></p>
                                    </div>
                                </div>
                                <div class="control-group form-group">
                                    <div class="controls">
                                        <label class="contact-p1">Amount /Cent</label>
                                        <input type="number" class="form-control" name="price" id="email" Placeholder="" required>
                                        <p class="help-block"></p>
                                    </div>
                                </div>


                                <div class="control-group form-group">
                                    <div class="controls">
                                        <button onclick="window.open('https://www.latlong.net/');">
                                            <code>Get Latitude & Longitude</code>
                                        </button><br>                                      <br>
                                        Latt <input type="text" name="lattitude" id="latt" class="form-control_edited" required="" >
                                        Longg <input type="text" name="longittude" id="long" class="form-control_edited" required="">
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
                                <button type="submit" class="btn btn-primary">Add Rent</button>	
                                </form>                                                                                                
                            </div>
                        </div>

                        <div class="clearfix"></div>
                </div>
            </div>
            </section>


            <jsp:include page="../footer.jsp"></jsp:include>