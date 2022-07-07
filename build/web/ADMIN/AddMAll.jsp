<jsp:include page="AdminHead.jsp"></jsp:include>
   <head>
      <script type="text/javascript">
         function showLocation(position) {
            var latitude = position.coords.latitude;
            var longitude = position.coords.longitude;
            var latlongvalue = position.coords.latitude + ","
            + position.coords.longitude;
            var img_url = "https://maps.googleapis.com/maps/api/staticmap?center="
            +latlongvalue+"&amp;zoom=14&amp;size=400x300&amp;key
            =AIzaSyAa8HeLH2lQMbPeOiMlM9D1VxZ7pbGQq8o";
            document.getElementById("mapholder").innerHTML =
            "<img src='"+img_url+"'>";
         }
         function errorHandler(err) {
            if(err.code == 1) {
               alert("Error: Access is denied!");
            } else if( err.code == 2) {
               alert("Error: Position is unavailable!");
            }
         }
         function getLocation(){
            if(navigator.geolocation){
               // timeout at 60000 milliseconds (60 seconds)
               var options = {timeout:60000};
               navigator.geolocation.getCurrentPosition
               (showLocation, errorHandler, options);
            } else{
               alert("Sorry, browser does not support geolocation!");
            }
         }
      </script>
          <script>
            function winf(){
                window.open('https://www.latlong.net','popup','width=400,height=400');               
            }
            </script>
   </head>
<section class="contact-w3ls">
        <div class="container">
            <div class="wthree-heading">
                <h2 class="w3l_header">Add MALL <sub>Shop</sub></h2>
                <p class="quia">New mall shop details</p>
            </div>
            <div class="con-top">
                <div class="col-lg-6 col-md-6 col-sm-6 contact-w3-agile2" data-aos="flip-left">
                    <div class="contact-agileits">
        <form name="frm" action="fileuploadaction.jsp" method="post" enctype="multipart/form-data">
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label class="contact-p1">Mall Name: </label> 
                                    <input type="text" class="form-control" name="mname" id="name" Placeholder=" " required="">
                                    <p class="help-block"></p>
                                </div>
                            </div>	
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label class="contact-p1">Email</label>
                                    <input type="email" class="form-control" name="sname" id="phone" Placeholder=" " required="">
                                    <p class="help-block"></p>
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label class="contact-p1">Phone Number</label>
                                    <input type="text" class="form-control" name="phone" id="email" Placeholder=" " required="" maxlength="10" minlength="10">
                                    <p class="help-block"></p>
                                </div>
                            </div>
                             <div class="control-group form-group">
                                <div class="controls">
                                    <label class="contact-p1">Open Time</label>
                                    <input type="time" class="form-control" name="pname" id="email" Placeholder=" " required="">
                                    <p class="help-block"></p>
                                </div>
                            </div>
                             <div class="control-group form-group">
                                <div class="controls">
                                    <label class="contact-p1">Close Time</label>
                                    <input type="time" class="form-control" name="qty" id="email" Placeholder=" " required="" maxlength="10" minlength="10">
                                    <p class="help-block"></p>
                                </div>
                            </div> 
                              <div class="control-group form-group">
                                <div class="controls">
                                    <label class="contact-p1">Holiday</label>
                                    <input type="text" class="form-control" name="price" id="email" Placeholder=" " required="">
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
                                    <label class="contact-p1">Images</label>
                                                                <input type="file" name="image" class=" form-control" required="" multiple/><br>
                                    <p class="help-block"></p>
                                </div>
                            </div>
                                    <div id="success"></div>
                            <!-- For success/fail messages -->
                            <button type="submit" class="btn btn-primary">Add MAll</button>	
                        </form>                                                                                                
                    </div>
                </div>

                <div class="clearfix"></div>
            </div>
        </div>
    </section>



<jsp:include page="../footer.jsp"></jsp:include>