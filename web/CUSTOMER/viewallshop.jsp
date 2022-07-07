

<%@page import="java.util.Vector"%>
<%@page import="java.util.Iterator"%>
<%@page import="Connection.dbconnection"%>
<jsp:include page="CustomerHead.jsp"></jsp:include>
<style>
    
    button{
        background-color:  #1da1f2;
        color: white;
        padding: 10px;
        width: 150px;
        border-radius: 10px;
        box-shadow:  10px 10px 10px 10px #dff0d8;
    }
    
</style>
    <div class="team">
        <div class="container">
            <div class="wthree-heading">
                <h3 class="w3l_header">Shop List</h3>
                <p class="quia">All Shops Records</p>
            </div>
            <div class="agile_inner_grids">

            <%

                try {
String sqr=request.getParameter("id");
                    String qrys = "select *from addshop where mallid='"+sqr+"' ";
                    System.out.println("qry::" + qrys);
                    dbconnection cons = new dbconnection();
                    Iterator is = cons.getData(qrys).iterator();

                    while (is.hasNext()) {
                        Vector v = (Vector) is.next();
                        //    n = v.get(0).toString();
                        //    System.out.println(n);
            %>

            <div class="col-md-4 w3_agile_team_grid_info">
                <img src="shop.jpg" alt=" " class="img-responsive" />
                <h3><%=v.get(1)%></h3>
                <p><%=v.get(2)%></p>
                 <p><%=v.get(3)%></p>
                <ul class="footer_list_icons team_icons_agile">            
                  <a href="viewproduct.jsp?id=<%=v.get(1)%>"> <button type="button" class="bb">View Products</button></a>
                </ul>
            </div>



            <%}

                } catch (Exception e) {
                    out.print(e);
                }

            %>
            <div class="clearfix"> </div>
        </div>	</div>
</div>

<jsp:include page="../footer.jsp"></jsp:include>
