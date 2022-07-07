

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
        box-shadow:  10px 10px 10px 10px #c0a16b;
    }
    #h{
        background-color:  #EAEAEA;
        border-top-right-radius: 70px;
        border-bottom-left-radius: 90px;
    }
</style>
    <div class="team">
        <div class="container">
            <div class="wthree-heading">
                <h3 class="w3l_header">MALLS List</h3>
                <p class="quia">All Malls Records</p>
            </div>
            <div class="agile_inner_grids">

            <%

                try {

                    String qrys = "select *from addrentshop";
                    System.out.println("qry::" + qrys);
                    dbconnection cons = new dbconnection();
                    Iterator is = cons.getData(qrys).iterator();

                    while (is.hasNext()) {
                        Vector v = (Vector) is.next();
                        //    n = v.get(0).toString();
                        //    System.out.println(n);
            %>

            <div class="col-md-4 w3_agile_team_grid_info" id="h">
                <img src="../assets/images/<%=v.get(8)%>" alt=" " class="img-responsive" />
                <h3><%=v.get(2)%></h3>
                <p><%=v.get(3)%></p>
                <p>Amount /cent  :<%=v.get(4)%></p>
                                    <li>Square Feet :<%=v.get(5)%></i></a></li>

                <ul class="footer_list_icons team_icons_agile">
                    <li><%=v.get(5)%></i></a></li>
                    <li><%=v.get(6)%></i></a></li>
                    <li><%=v.get(7)%></i></a></li>
                </ul>
                  <a href="Requesttorentshop.jsp?id=<%=v.get(0)%>"> <button type="button" class="bb">Request</button></a>
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
