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

    
    <div class="banner-bottom gallery">
		<div class="container">
		
		<div class="wthree-heading">
			<h2 class="w3l_header">MALLS</h2>
			<p class="quia">Our Malls</p>
		</div>
			<div class="w3ls_gallery_grids">
                                    <%

                    try{

                            String qrys = "select *from mall";
                            System.out.println("qry::" + qrys);
dbconnection cons=new dbconnection();
                            Iterator is = cons.getData(qrys).iterator();
                          
                            while (is.hasNext()) {
                                Vector v = (Vector) is.next();
                            //    n = v.get(0).toString();
                            //    System.out.println(n);
                        %>
                        
				<div class="col-md-4 w3_agile_gallery_grid" id="o">
					<div class="agile_gallery_grid">
						<a title="Donec sapien massa, placerat ac sodales ac, feugiat quis est." src="../assets/images/<%=v.get(9)%>">
							<div class="agile_gallery_grid1">
								<img src="../assets/images/<%=v.get(9)%>"  alt=" " class="img-responsive" />
								<div class="w3layouts_gallery_grid1_pos">
                                                                    									<h3><%=v.get(1)%></h3>
									<h3><%=v.get(2)%></h3>
									<h3><%=v.get(3)%></h3>

									<h3><%=v.get(4)%></h3>
                                                                        <div><div style="float: right">Opens :<%=v.get(5)%></div><div style="float: left">Close :<%=v.get(6)%></div></div>
                                                                        <a href="remove.jsp?id=<%=v.get(0)%>"> <button type="button" class="bb">Remove</button></a>
                                                                </div>
								</div>
							</div>
						</a>
					</div>
				
					
				
                     
                        
<%} 


%>
                        </div>
<%

}catch(Exception e){
                        out.print(e);
                    }
                   %>		</div>
	</div></div>
				<div class="clearfix"></div>
    
        <br><br><br>
    
<jsp:include page="../footer.jsp"></jsp:include>