<%@page import="java.util.Iterator"%>
<%@page import="java.util.Vector"%>
<%@page import="Connection.dbconnection"%>
<jsp:include page="AdminHead.jsp"></jsp:include>
<style>
    
    button{
        background-color: darkgreen;
        color: white;
        width: 150px;
        padding: 10px;
        border-radius: 10px;
    }
    #o{
        box-shadow: 10px 10px 12px 12px #d5d5d5;
    }
</style>

    
  <div class="stats-bottom contact">
		<div class="container">
			
			<div class="wthree-heading">
			<h3 class="w3l_header">OUR CLIENT</h3>
			<p class="quia">Customers Records</p>
		</div>
			<div class="agileinfo_services_grids">
                                    <%

                    try{

                            String qrys = "select *from cusregister";
                            System.out.println("qry::" + qrys);
dbconnection cons=new dbconnection();
                            Iterator is = cons.getData(qrys).iterator();
                          
                            while (is.hasNext()) {
                                Vector v = (Vector) is.next();
                            //    n = v.get(0).toString();
                            //    System.out.println(n);
                        %>
                        
				<div class="col-md-4 agileinfo_services_grid">
					<div class="agileinfo_services_grid1">
						<h4><%=v.get(1)%></h4>
						<p><%=v.get(2)%></p>
                                                						<p><%=v.get(4)%></p>
                                                                                                <p><%=v.get(3)%></p>

						<div class="agileinfo_services_grid1_pos">
							<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
						</div>
					</div>
				</div>
				
					
				
                     
                        
<%} 


%>
                        </div>
<%

}catch(Exception e){
                        out.print(e);
                    }
                   %>				<div class="clearfix"> </div>
			</div>
		</div>
	
    
        <br><br><br>
    
<jsp:include page="../footer.jsp"></jsp:include>