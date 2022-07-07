<%@page import="java.util.Vector"%>
<%@page import="java.util.Iterator"%>
<%@page import="Connection.dbconnection"%>
<jsp:include page="RShopHead.jsp"></jsp:include>


    <section class="contact-w3ls">
        <div class="container">
            <div class="wthree-heading">
                <h2 class="w3l_header">Replay To Customer  <sub>Shop</sub></h2>
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
                                <input type="hidden" class="form-control" name="reqid" id="name" value="<%=str%>">

                                <input type="hidden" class="form-control" name="rentid" id="name" value="<%=userid%>">
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
                                <button type="submit" class="btn btn-primary" name="submit">Send</button>	
                            </div>
                              </form>                                                                                                
 <%

                    try {
                        if (request.getParameter("submit") != null) {
                            // String fn=request.getParameter("fname");
                            dbconnection con = new dbconnection();
                            String fns = request.getParameter("reqid");
                            String sn = request.getParameter("rentid");
                            String bb = request.getParameter("phone");
                            String qry = "insert into replay(reqid,rentid,des)values('" + fns + "','"+sn+"','" + bb + "')";
                            System.out.println("qry::" + qry);
                            int j = con.putData(qry);
                            if (j > 0) {
                %>
                <script>alert("Replay Success");
                    window.location = 'cusrequest.jsp';</script>
                    <%    } else {
                    %>
                <script>alert(" failed");
                    window.location = 'cusrequest.jsp';</script>
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