<%@page import="java.util.Vector"%>
<%@page import="java.util.Iterator"%>
<%@page import="Connection.dbconnection"%>
<jsp:include page="ShopHead.jsp"></jsp:include>

	<!-- about -->
	<section class="about py-5" id="about">
	
            

    <style>
        #element{

            width: 90%;
            padding: 20px;
            text-align: center;

        }
        tr,td{
            padding:20px;
        }
        th{
            padding: 20px;
            text-align: center;
        }
        .delete{
            background-color: orange;
            padding: 10px;
            border-color: white;
            box-sizing: 2px;
        }
        table{
            background-color: darkgoldenrod;
            color: white;
        }.dd{
             background-color:magenta;
            padding: 10px;
            border-color: white;
            box-sizing: 2px;
        }
        img{
            border-radius: 60px;
            border-color: white;
            border-style:  double;
        }
    </style><br><br>
    <div class="title-heading-w3 text-center mx-auto mb-md-5 mb-4" style="max-width:500px;">
        <h2 class="title-style">Our Customer Booking Records  </h2><br><br>
    </div>
    <center>

        <div class="container-fluid">
            <div class="table table-responsive table-responsive-lg">
                <table id="element">
                    <tr style="background-color:black;color:white">
                        <td></td>
                        <td>Shop Name</td>
                        <td>Product</td>
                                                <td>Card Holder Name</td>

                        <td >Card Number</td>
                        <td >Day</td>
                        <td >Year</td>
                        <td>cvv</td>
                        <td>Amount</td>


                    </tr>
                    <tr><%

                        try {
                    String userids = (String) session.getAttribute("loguid");

                            String qry = "select addproduct.sname,addproduct.pname, orderpds.* from orderpds,addproduct where addproduct.pid=orderpds.pid and addproduct.mallid='"+userids+"'";
                            System.out.println("qry::" + qry);
                            dbconnection cons = new dbconnection();
                            Iterator is = cons.getData(qry).iterator();

                            while (is.hasNext()) {
                                Vector v = (Vector) is.next();
                                //    n = v.get(0).toString();
                                //    System.out.println(n);
%>
                <tr class="tb-row">
                    <td><li class=" fa fa-product-hunt"> </li></td>
                                                          <td><%=v.get(0)%></td>

                    <td><%=v.get(1)%></td>
                    <td><%=v.get(8)%></td>

                                      <td><%=v.get(4)%></td>

                                      <td><%=v.get(5)%></td>
                                      <td><%=v.get(6)%></td>
                                      <td><%=v.get(7)%></td>
                                      <td><%=v.get(9)%></td>

             
   </tr>

                <%
                    }
                %>  </tr></table>
                <%
                    } catch (Exception e) {
                        out.print(e);
                    }
                %>

        </div>
    </div>
</center>


            
          
	
        <br><br>
        <jsp:include page="../footer.jsp"></jsp:include>