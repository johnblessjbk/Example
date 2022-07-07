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
        background-color:  lightcyan;
        margin: 10px;
    }
</style>

    
<div class="popular-section-wthree ">
	<div class="container">	
		<div class="wthree-heading">
			<h2 class="w3l_header">RENT SHOP</h2>
			<p class="quia">Our Rent Shop Records</p>
		</div>
				<div class="popular-agileinfo" id="o">
                                    <%

                    try{

                            String qrys = "select *from rentshop";
                            System.out.println("qry::" + qrys);
dbconnection cons=new dbconnection();
                            Iterator is = cons.getData(qrys).iterator();
                          
                            while (is.hasNext()) {
                                Vector v = (Vector) is.next();
                            //    n = v.get(0).toString();
                            //    System.out.println(n);
                        %>
                        <div class="col-md-3 popular-grid" id="o">
						<i class="fa fa-home" aria-hidden="true"></i>
						<h4><%=v.get(1)%></h4>
						<p><%=v.get(2)%> </p>
                                                						<p><%=v.get(3)%> </p>
						<p><%=v.get(4)%> </p>

					</div>
				
					
				
                     
                        
<%} 


%>
                        </div>
<%

}catch(Exception e){
                        out.print(e);
                    }
                   %>				</div>
</div>
    
        <br><br><br>
    
<jsp:include page="../footer.jsp"></jsp:include>