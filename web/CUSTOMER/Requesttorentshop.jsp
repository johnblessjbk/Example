<%@page import="java.util.Vector"%>
<%@page import="java.util.Iterator"%>
<%@page import="Connection.dbconnection"%>
<jsp:include page="CustomerHead.jsp"></jsp:include>


    <section class="contact-w3ls">
        <div class="container">
            <div class="wthree-heading">
                <h2 class="w3l_header">Request to Rent Shop <sub>Shop</sub></h2>
                <p class="quia"> </p>
            </div>
            <div class="con-top">
                <div class="col-lg-6 col-md-6 col-sm-6 contact-w3-agile2" data-aos="flip-left">
                    <div class="contact-agileits">
                        <form name="frm">

                            <div class="control-group form-group">
                                <div class="controls">

                                <%
                                    String str=request.getParameter("id");
                                    String userid = (String) session.getAttribute("loguid");
                                %>
                                <input type="hidden" class="form-control" name="renit" id="name" value="<%=str%>">

                                <input type="hidden" class="form-control" name="userid" id="name" value="<%=userid%>">
                                </div>   <div class="control-group form-group">
                                    <div class="controls">
                                        <label class="contact-p1">Request Date</label> 
                                        <input type="date" class="form-control" name="dates" id="name" Placeholder=" " required="">
                                        <p class="help-block"></p>
                                    </div>
                                </div>	
                              
                                <div class="control-group form-group">
                                    <div class="controls">
                                        <label class="contact-p1">Description  </label>
                                        <textarea class="form-control" name="phone" id="sqr" Placeholder=" " required="" cols="9" rows="9"></textarea>
                                        <p class="help-block"></p>
                                    </div>
                                </div>
                                
                              
                                
                                <div id="success"></div>
                                <!-- For success/fail messages -->
                                <button type="submit" class="btn btn-primary" name="submit">Add Rent</button>	
                            </div>
                              </form>                                                                                                
 <%

                    try {
                        if (request.getParameter("submit") != null) {
                            // String fn=request.getParameter("fname");
                            dbconnection con = new dbconnection();
                            String fns = request.getParameter("userid");
                            String sn = request.getParameter("renit");
                            String aa = request.getParameter("dates");
                            String bb = request.getParameter("phone");
                            String qry = "insert into requesttorent(userid,rentid,dates,des)values('" + fns + "','"+sn+"','" + aa + "','" + bb + "')";
                            System.out.println("qry::" + qry);
                            int j = con.putData(qry);
                            if (j > 0) {
                %>
                <script>alert("Request Success");
                    window.location = 'Requesttorentshop.jsp';</script>
                    <%    } else {
                    %>
                <script>alert("Request failed");
                    window.location = 'Requesttorentshop.jsp';</script>
                    <%
                                }
                            }
                        } catch (Exception e) {
                            out.println(e);
                        }

                    %>
                        </div>

                        <div class="clearfix"></div>
                </div>
            </div>
            </section>


            <jsp:include page="../footer.jsp"></jsp:include>